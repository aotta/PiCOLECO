/*
//                       PiCOLECO MultiCART by Andrea Ottaviani 2024
//
//  COLECOVISION  multicart based on Raspberry Pico board -
//
//  More info on https://github.com/aotta/ 
//
//   parts of code are directly from the A8PicoCart project by Robin Edwards 2023
//  
//   Needs to be a release NOT debug build for the cartridge emulation to work
// 
//   Edit myboard.h depending on the type of flash memory on the pico clone//
//
//   v. 1.0 2024-05-15 : Initial version for Pi Pico 
//   v. 1.0c 2025-11-05: fix bug pacman compilation-porting to sdk 2.2
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "pico/multicore.h"
#include "hardware/gpio.h"
#include "pico/platform.h"
#include "pico/stdlib.h"
#include "hardware/vreg.h"
#include "hardware/clocks.h"
#include "pico/divider.h"
#include "hardware/flash.h"
#include "hardware/sync.h"


#include "rom.h"

#include "tusb.h"
#include "ff.h"
#include "fatfs_disk.h"

// Pico pin usage definitions

#define A0_PIN    0
#define A1_PIN    1
#define A2_PIN    2
#define A3_PIN    3
#define A4_PIN    4
#define A5_PIN    5
#define A6_PIN    6
#define A7_PIN    7
#define A8_PIN    8
#define A9_PIN    9
#define A10_PIN  10
#define A11_PIN  11
#define A12_PIN  12
#define A13_PIN  13
#define A14_PIN  14
#define A15_PIN  15  // non collegato
#define D0_PIN   16
#define D1_PIN   17
#define D2_PIN   18
#define D3_PIN   19
#define D4_PIN   20
#define D5_PIN   21
#define D6_PIN   22
#define D7_PIN   23
#define FCE0_PIN 24
#define FCE1_PIN 25
#define FCE2_PIN 26
#define FCE3_PIN 27

// Pico pin usage masks

#define A0_PIN_MASK     0x00000001L //gpio 0
#define A1_PIN_MASK     0x00000002L
#define A2_PIN_MASK     0x00000004L
#define A3_PIN_MASK     0x00000008L
#define A4_PIN_MASK     0x00000010L
#define A5_PIN_MASK     0x00000020L
#define A6_PIN_MASK     0x00000040L
#define A7_PIN_MASK     0x00000080L
#define A8_PIN_MASK     0x00000100L
#define A9_PIN_MASK     0x00000200L
#define A10_PIN_MASK    0x00000400L
#define A11_PIN_MASK    0x00000800L
#define A12_PIN_MASK    0x00001000L
#define A13_PIN_MASK    0x00002000L
#define A14_PIN_MASK    0x00004000L  //gpio 14
#define A15_PIN_MASK    0x00008000L // NON COLLEGETO
#define D0_PIN_MASK     0x00010000L //gpio 16
#define D1_PIN_MASK     0x00020000L
#define D2_PIN_MASK     0x00040000L
#define D3_PIN_MASK     0x00080000L
#define D4_PIN_MASK     0x00100000L
#define D5_PIN_MASK     0x00200000L  // gpio 21
#define D6_PIN_MASK     0x00400000L
#define D7_PIN_MASK     0x00800000L

#define FCE0_PIN_MASK   0x01000000L //gpio 24 enable $8000
#define FCE1_PIN_MASK   0x02000000L //gpio 25 enable $a000
#define FCE2_PIN_MASK   0x04000000L //gpio 26 enable $c000
#define FCE3_PIN_MASK   0x08000000L //gpio 27 enable $e000

// Aggregate Pico pin usage masks
#define ALL_GPIO_MASK  	0x0FFF7FFFL
#define BUS_PIN_MASK    0x00007FFFL
#define DATA_PIN_MASK   0x00FF0000L
#define FLAG_MASK       0x0F000000L
#define ALWAYS_IN_MASK  (BUS_PIN_MASK | FLAG_MASK)
#define ALWAYS_OUT_MASK (DATA_PIN_MASK )

#define SET_DATA_MODE_OUT   gpio_set_dir_out_masked(DATA_PIN_MASK)
#define SET_DATA_MODE_IN    gpio_set_dir_in_masked(DATA_PIN_MASK)
// We're going to erase and reprogram a region 256k from the start of flash.
// Once done, we can access this at XIP_BASE + 256k.


char RBLo,RBHi;
#define BINLENGTH  1024*128+1
unsigned char ROM[BINLENGTH];
unsigned char RAM[1024];
unsigned char files[256*100] = {0};
unsigned char nomefiles[32*25] = {0};
char curPath[256] = "";
char path[256];
int fileda=0,filea=0;
volatile char cmd=0;
char errorBuf[40];
bool cmd_executing;
volatile int bankswitch;
int bksw=0;
int romsize;
int lastpos;


////////////////////////////////////////////////////////////////////////////////////
//                     Error(N)
////////////////////////////////////////////////////////////////////////////////////
void error(int numblink){
 	multicore_lockout_start_blocking();	

	gpio_set_dir(PICO_DEFAULT_LED_PIN,GPIO_OUT);
  while(1){

    for(int i=0;i<numblink;i++) {
      gpio_put(PICO_DEFAULT_LED_PIN,true);
      sleep_ms(600);
      gpio_put(PICO_DEFAULT_LED_PIN,false);
      sleep_ms(500);
    }
  sleep_ms(2000);
  }
}

/*
 Theory of Operation
 -------------------
 Colecovision sends command to mcu on cart by writing to F000 (CMD), F001 (parameter) and menu (E002-E641) 
 Colecovision must be running from RAM when it sends a command, since the mcu on the cart will
 go away at that point. Colecovision polls 6001 until it reads $1.
*/
#pragma GCC push_options
#pragma GCC optimize ("O3")

void __not_in_flash_func(core1_main()) {
    uint32_t addr;
    char dataWrite=0;
    uint32_t pins;
    uint8_t bank=0;
	uint8_t Ena_bank=0;
	uint32_t lookup_bank[8]= {0x0,0x4000,0x8000,0xc000,0x10000,0x14000,0x18000,0x1c000};

	multicore_lockout_victim_init();	
   
    gpio_set_dir_in_masked(ALWAYS_IN_MASK);
    // Initial conditions
    SET_DATA_MODE_IN;
    

// /*
    while(bankswitch==0) {	
	pins=gpio_get_all();
	Ena_bank=((pins & FLAG_MASK)>>FCE0_PIN);
	if (Ena_bank!=0b1111) {
		addr = (pins & BUS_PIN_MASK);
		if (Ena_bank==0b0111) {
	 	  if ((addr >= 0x7000)) {		
			if (addr>=0x7100) {
				SET_DATA_MODE_OUT;
    			gpio_put_masked(DATA_PIN_MASK,ROM[addr]<<16);
    			SET_DATA_MODE_IN;
				ROM[0xf001]=addr-0x7100;
		    } else {	
		    SET_DATA_MODE_OUT;
    		gpio_put_masked(DATA_PIN_MASK,ROM[addr]<<16);
    		SET_DATA_MODE_IN;
			ROM[0xf000]=addr-0x7000;
			} 
		   }
		  } else {
			SET_DATA_MODE_OUT;
    		gpio_put_masked(DATA_PIN_MASK,ROM[addr]<<16);
    		SET_DATA_MODE_IN;
		}
	} 	
  }	  // game choosen at this point!
//*/


  if (bankswitch==1) {
    while (1) {
  	  pins=gpio_get_all();
	  Ena_bank=((pins & FLAG_MASK)>>FCE0_PIN);	
	  addr = (pins & BUS_PIN_MASK);
	  if (Ena_bank!=0b1111) {
		addr = (pins & BUS_PIN_MASK);
		SET_DATA_MODE_OUT;
   		gpio_put_masked(DATA_PIN_MASK,ROM[addr]<<16);
   		SET_DATA_MODE_IN;
	  }  	
    }	  
   } else if ((bankswitch==2)||(bankswitch==4)) { //128k
	bank=0;
	int romBankMask;
	if (bankswitch==2) {
		romBankMask=7;
	} else {
		romBankMask=3;
	}
    while (1) {
  	  pins=gpio_get_all();
  	  Ena_bank=((pins & FLAG_MASK)>>FCE0_PIN);	
	  addr = (pins & BUS_PIN_MASK);
	  switch (Ena_bank) {
        case 0b1111: break;
    	case 0b1110:
    	/////////////////// $8000 /////////////////// 
    	case 0b1101: 	
    	/////////////////// $A000 /////////////////// 
			SET_DATA_MODE_OUT;
    		gpio_put_masked(DATA_PIN_MASK,ROM[addr+lookup_bank[romBankMask]]<<16);
			SET_DATA_MODE_IN;      
	  		break;
	   	case 0b1011: 	
    	/////////////////// $C000 /////////////////// 
	   	case 0b0111: 	
    	/////////////////// $E000 /////////////////// 
			if (addr>=0x7fc0) {
		   		bank=((addr & romBankMask));
			} else {
			SET_DATA_MODE_OUT;
    		gpio_put_masked(DATA_PIN_MASK,ROM[addr+lookup_bank[bank]-0x4000]<<16);
			SET_DATA_MODE_IN;
			}   
	  		break;
	  }	
	}
    } else if (bankswitch==3) {
	  while (1) {
		bank=1;
		pins=gpio_get_all();
  	  	Ena_bank=((pins & FLAG_MASK)>>FCE0_PIN);	
	  	addr = (pins & BUS_PIN_MASK);
		  if (Ena_bank!=0b1111) {
     		if (addr<0x4000) {
				SET_DATA_MODE_OUT;
				gpio_put_masked(DATA_PIN_MASK,ROM[addr]<<16);
				SET_DATA_MODE_IN;
			} else { 
        	  	SET_DATA_MODE_OUT;
				if (addr==0x7f80) {
					gpio_put_masked(DATA_PIN_MASK,0);
				} else {
   					gpio_put_masked(DATA_PIN_MASK,ROM[addr+(bank-1)*0x4000]<<16);
   					SET_DATA_MODE_IN;
				}
			}
		} else {
			  if (addr==0x7f90) bank=1;
			  if (addr==0x7fa0) bank=2;
			  if (addr==0x7fb0) bank=3;
		}  
	}
   }
}
#pragma GCC pop_options
////////////////////////////////////////////////////////////////////////////////////
//                     MENU Reset
////////////////////////////////////////////////////////////////////////////////////    

void reset() {
   
 //multicore_lockout_start_blocking();	

  while (((gpio_get_all() & FLAG_MASK)>>FCE0_PIN)!=0b1111);
  SET_DATA_MODE_OUT;
  gpio_put_masked(DATA_PIN_MASK,0xc7<<16);
  sleep_ms(3);
  SET_DATA_MODE_IN;

  while (((gpio_get_all() & FLAG_MASK)>>FCE0_PIN)!=0b1111);
  SET_DATA_MODE_OUT;
  gpio_put_masked(DATA_PIN_MASK,0xc7<<16);
  sleep_ms(3);
  SET_DATA_MODE_IN;
  
  //multicore_lockout_end_blocking();

  while (((gpio_get_all() & FLAG_MASK)>>FCE0_PIN)!=0b1111);
  SET_DATA_MODE_OUT;
  gpio_put_masked(DATA_PIN_MASK,0xc7<<16);
  sleep_ms(3);
  SET_DATA_MODE_IN;



}       

////////////////////////////////////////////////////////////////////////////////////

typedef struct {
	char isDir;
	char filename[13];
	char long_filename[32];
	char full_path[210];
} DIR_ENTRY;	// 256 bytes = 256 entries in 64k

int num_dir_entries = 0; // how many entries in the current directory

int entry_compare(const void* p1, const void* p2)
{
	DIR_ENTRY* e1 = (DIR_ENTRY*)p1;
	DIR_ENTRY* e2 = (DIR_ENTRY*)p2;
	if (e1->isDir && !e2->isDir) return -1;
	else if (!e1->isDir && e2->isDir) return 1;
	else return strcasecmp(e1->long_filename, e2->long_filename);
}

char *get_filename_ext(char *filename) {
    char *dot = strrchr(filename, '.');
    if(!dot || dot == filename) return "";
    return dot + 1;
}

int is_valid_file(char *filename) {
	char *ext = get_filename_ext(filename);
	if (strcasecmp(ext, "BIN") == 0 || strcasecmp(ext, "ROM") == 0  || strcasecmp(ext, "CV") )
		return 1;
	return 0;
}

FILINFO fno;
char search_fname[FF_LFN_BUF + 1];

// polyfill :-)
char *stristr(const char *str, const char *strSearch) {
    char *sors, *subs, *res = NULL;
    if ((sors = strdup (str)) != NULL) {
        if ((subs = strdup (strSearch)) != NULL) {
            res = strstr (strlwr (sors), strlwr (subs));
            if (res != NULL)
                res = (char*)str + (res - sors);
            free (subs);
        }
        free (sors);
    }
    return res;
}

int scan_files(char *path, char *search)
{
    FRESULT res;
    DIR dir;
    UINT i;

	res = f_opendir(&dir, path);
	if (res == FR_OK) {
		for (;;) {
			if (num_dir_entries == 99) break;
			res = f_readdir(&dir, &fno);
			if (res != FR_OK || fno.fname[0] == 0) break;
			if (fno.fattrib & (AM_HID | AM_SYS)) continue;
			if (fno.fattrib & AM_DIR) {
				i = strlen(path);
				strcat(path, "/");
				if (fno.altname[0])	// no altname when lfn is 8.3
					strcat(path, fno.altname);
				else
					strcat(path, fno.fname);
				if (strlen(path) >= 210) continue;	// no more room for path in DIR_ENTRY
				res = scan_files(path, search);
				if (res != FR_OK) break;
				path[i] = 0;
			}
			else if (is_valid_file(fno.fname))
			{
				char *match = stristr(fno.fname, search);
				if (match) {
					DIR_ENTRY *dst = (DIR_ENTRY *)&files[0];
					dst += num_dir_entries;
					// fill out a record
					dst->isDir = (match == fno.fname) ? 1 : 0;	// use this for a "score"
					strncpy(dst->long_filename, fno.fname, 31);
					dst->long_filename[31] = 0;
					// 8.3 name
					if (fno.altname[0])
						strcpy(dst->filename, fno.altname);
					else {	// no altname when lfn is 8.3
						strncpy(dst->filename, fno.fname, 12);
						dst->filename[12] = 0;
					}
					// full path for search results
					strcpy(dst->full_path, path);

					num_dir_entries++;
				}
			}
		}
		f_closedir(&dir);
	}
	return res;
}

int search_directory(char *path, char *search) {
	char pathBuf[256];
	strcpy(pathBuf, path);
	num_dir_entries = 0;
	int i;
	FATFS FatFs;
	if (f_mount(&FatFs, "", 1) == FR_OK) {
		if (scan_files(pathBuf, search) == FR_OK) {
			// sort by score, name
			qsort((DIR_ENTRY *)&files[0], num_dir_entries, sizeof(DIR_ENTRY), entry_compare);
			DIR_ENTRY *dst = (DIR_ENTRY *)&files[0];
			// re-set the pointer back to 0
			for (i=0; i<num_dir_entries; i++)
				dst[i].isDir = 0;
			return 1;
		}
	}
	strcpy(errorBuf, "Problem searching flash");
	return 0;
}

int read_directory(char *path) {
	int ret = 0;
	num_dir_entries = 0;
	DIR_ENTRY *dst = (DIR_ENTRY *)&files[0];

    if (!fatfs_is_mounted())
       mount_fatfs_disk();

	FATFS FatFs;
	if (f_mount(&FatFs, "", 1) == FR_OK) {
		DIR dir;
		if (f_opendir(&dir, path) == FR_OK) {
			while (num_dir_entries < 99) {
				if (f_readdir(&dir, &fno) != FR_OK || fno.fname[0] == 0)
					break;
				if (fno.fattrib & (AM_HID | AM_SYS))
					continue;
				dst->isDir = fno.fattrib & AM_DIR ? 1 : 0;
				if (!dst->isDir)
					if (!is_valid_file(fno.fname)) continue;
				// copy file record to first ram block
				// long file name
				strncpy(dst->long_filename, fno.fname, 31);
				dst->long_filename[31] = 0;
				// 8.3 name
				if (fno.altname[0])
		            strcpy(dst->filename, fno.altname);
				else {	// no altname when lfn is 8.3
					strncpy(dst->filename, fno.fname, 12);
					dst->filename[12] = 0;
				}
				dst->full_path[0] = 0; // path only for search results
	            dst++;
				num_dir_entries++;
			}
			f_closedir(&dir);
		}
		else
			strcpy(errorBuf, "Can't read directory");
		f_mount(0, "", 1);
		qsort((DIR_ENTRY *)&files[0], num_dir_entries, sizeof(DIR_ENTRY), entry_compare);
		ret = 1;
	}
	else
		strcpy(errorBuf, "Can't read flash memory");
	return ret;
}

int filesize(char *filename) {

	FATFS FatFs;
	int car_file = 0;
	UINT br = 0;

	if (f_mount(&FatFs, "", 1) != FR_OK) {
		error(1);
		return 0;
	}

	FIL fil;
	if (f_open(&fil, filename, FA_READ) != FR_OK) {
		sleep_ms(10000);
		error(2);
		goto cleanup;
	}

	//int bytes_to_read = 128 * 1024;
	int byteslong = f_size(&fil);
	romsize=byteslong;
	char tmp[2]={0,0};
    unsigned char *dst = &tmp[0];

	f_read(&fil,dst,2,&br);
	bksw=1;
    if (romsize>(32*1024)) {
		bksw=2;
		if (romsize<128*1024) bksw=4;	
    	if ((tmp[0]==0x55) && (tmp[1]==0xAA)) bksw=3; //poi rimetti
	
	}

closefile:
	f_close(&fil);
cleanup:
	f_mount(0, "", 1);

	return byteslong;
}


/* write test file from ROM */

int write_file(char *filename) {
	FATFS FatFs;
	UINT bw = 0;

	if (f_mount(&FatFs, "", 1) != FR_OK) {
		error(7);
	}
	unsigned char *dst = &ROM[0];
	// read the file to flash RAM
	
   FIL fil2;
	if (f_open(&fil2, filename, FA_WRITE | FA_CREATE_ALWAYS) != FR_OK) {
		error(4);	
		goto cleanup;
	}
	// read the file to flash RAM
	if (f_write(&fil2, dst, sizeof(ROM)-1, &bw) != FR_OK) {
		error(5);
		goto closefile;
	}
closefile:
	f_close(&fil2);
	
cleanup:
	f_mount(0, "", 1);

	return bw;
}


/* load file in  ROM */

int load_file(char *filename) {
	FATFS FatFs;
	UINT br = 0;
	UINT bw = 0;

	
	if (f_mount(&FatFs, "", 1) != FR_OK) {
		error(1);
	}
	FIL fil;
	if (f_open(&fil, filename, FA_READ) != FR_OK) {
		error(2);
	}
	ROM[6002+45]='r';
    sleep_ms(600);	  
	unsigned char *dst = &ROM[0];
	// read the file to flash RAM
	if (f_read(&fil, dst, sizeof(ROM)-1, &br) != FR_OK) {
	//	ROM[6002+30]='!';
		error(3);
	}
   //ROM[6002+46]='w';
closefile:
	f_close(&fil);
	    
cleanup:
	f_mount(0, "", 1);

	return br;
}

////////////////////////////////////////////////////////////////////////////////////
//                     filelist
////////////////////////////////////////////////////////////////////////////////////

void filelist(DIR_ENTRY* en,int da, int a)
{
  char longfilename[32];
  char tmp[32];


  for(int i=0;i<32*20;i++) ROM[6002+i]=0;
    for(int n = 0;n<(a-da);n++) {
		memset(longfilename,0,32);
	
	 	if (en[n+da].isDir) {
			strcpy(longfilename,"[");
			ROM[7100+n]=1;
			strcat(longfilename, en[n+da].long_filename);
			strcat(longfilename, "]");		
	 	} else {
			ROM[7100+n]=0;
			strcpy(longfilename, en[n+da].long_filename);
 		/// rimuovo il .bin
      		memset(tmp,0,sizeof(tmp));
      		int j=32;
      		int dot=0;
      		while ((longfilename[j]!='.')&&(j>0)) {
      			dot=j;
      			j--;
      		}
      		for (int i=0;i<j;i++) tmp[i]=longfilename[i];
      		tmp[j]=0;      
      		memcpy(longfilename,tmp,sizeof(tmp));
	 	}

	 	for(int i=0;i<31;i++) {
      		ROM[6002+i+(n*32)]=longfilename[i];
	  		if ((ROM[6002+i+(n*32)])<=31) ROM[6002+i+(n*32)]=32;
     	}
		strcpy((char*)&nomefiles[32*n], longfilename);
	}
	//ROM[7130]=da;ROM[7131]=a;ROM[7132]=num_dir_entries;
  }

////////////////////////////////////////////////////////////////////////////////////
//                     ColecoMenu
////////////////////////////////////////////////////////////////////////////////////
void colecoMenu(int tipo) { // 1=start,2=next page, 3=prev page, 4=dir up
  int numfile=0;
  int maxfile=0;
  int ret=0;
  int rootpos[255];

 switch (tipo) {
    case 1:
    /////////////////// TIPO 1 /////////////////// 
      ret = read_directory(curPath);
		  if (!(ret)) error(1);
		  maxfile=20;
		  if (maxfile>num_dir_entries) maxfile=num_dir_entries;
		  filea=fileda+maxfile;
		  filelist((DIR_ENTRY *)&files[0],fileda,filea);
		  //sleep_ms(1400);

      break;
    case 2: 	
/////////////////// TIPO 2 /////////////////// 
	 if (filea<num_dir_entries) {
        maxfile=20;
		    if ((filea+maxfile)>num_dir_entries) maxfile=num_dir_entries-filea;
   	    fileda=filea;
		    filea=fileda+maxfile;
    		filelist((DIR_ENTRY *)&files[0],fileda,filea); 
      }
      break;
    case 3:    
	 /////////////////// TIPO 3 /////////////////// 
   	  if (fileda>=20) {
  	    fileda=fileda-20;
		    filea=fileda+20;
		    filelist((DIR_ENTRY *)&files[0],fileda,filea);	
	    }
	   
    break;
  }
}
////////////////////////////////////////////////////////////////////////////////////
//                     Directory Up
////////////////////////////////////////////////////////////////////////////////////
void DirUp() {
	int len = strlen(curPath);
	if (len>0) {
		while (len && curPath[--len] != '/');
		curPath[len] = 0;
	}

}
////////////////////////////////////////////////////////////////////////////////////
//                     LOAD Game
////////////////////////////////////////////////////////////////////////////////////
void LoadGame(){ 
  int numfile=0;
  int numErr=0;
  int romLen=0;
  char longfilename[32];
  
  char firstbyte=0x0;

    numfile=ROM[0xf001]+fileda-1;    
	
	DIR_ENTRY *entry = (DIR_ENTRY *)&files[0];
    
	strcpy(longfilename,entry[numfile].long_filename);
    if (entry[numfile].isDir)
	{	// directory
	    lastpos=fileda;
     	strcat(curPath, "/");
		strcat(curPath, entry[numfile].filename);
		ROM[0xf000]=1; // re-read dir, path is changed
		colecoMenu(1);
	} else {
	    memset(path,0,sizeof(path));
		strcat(path,curPath);
		strcat(path, "/");
		strcat(path,longfilename);
   		for (int i=0;i<sizeof(path);i++) ROM[6002+i]=path[i];
		romsize=filesize(path);
		char str[8];
		memset(str,32,8);
        sprintf(str, "%d", romsize);
		for (int i=0;i<8;i++) {
			ROM[6002+32+i]=str[i];
		}
		if (bksw==2) {
			ROM[6002+42]='B';
			ROM[6002+43]='S';
		} else if (bksw==3) {
			ROM[6002+42]='B';
			ROM[6002+43]='3';
		} else if (bksw==4) {
			ROM[6002+42]='B';
			ROM[6002+43]='4';
		} else {
			ROM[6002+42]='N';
			ROM[6002+43]='B';
		}
	

		sleep_ms(360);
		//ROM[0xf000]=5; // poi rimetti
	    bankswitch=bksw;
	   	sleep_ms(380);
	
	    int br=load_file(path);  // load rom in files[]
        
		reset(); 
	
	/* 
		ROM[6002+45]='L';
	    sleep_ms(600);
		if ((bksw==2)&&(ROM[0x1c000]!=0x55)) error(5);
	
		memset(str,32,8);
		sprintf(str, "%d", br);
		for (int i=0;i<8;i++) {
			ROM[6002+46+i]=str[i];
		}
    */
		
	    //memcpy(ROM,flashROM,romsize);
        //write_file("/last.bin");
		
		//sleep_ms(50); // time to let core1 realize...
	
		//reset(); 
	
		//sleep_ms(300);
 		//reset();
		//sleep_ms(300);
 		//reset(); // just to be sure
		
       while(1);    
  }
  
}
////////////////////////////////////////////////////////////////////////////////////
//                     Colecovision Cart Main
////////////////////////////////////////////////////////////////////////////////////

void coleco_cart_main()
{
    uint32_t pins;
    uint32_t addr;
    uint32_t dataOut=0;
    uint16_t dataWrite=0;
 
 	// overclocking isn't necessary for most functions - but XEGS carts weren't working without it
	// I guess we might as well have it on all the time.
    
	set_sys_clock_khz(270000, true);
    //set_sys_clock_khz(170000, true);
  

    gpio_init_mask(ALL_GPIO_MASK);
  
    
  stdio_init_all();   // for serial output, via printf()
  printf("Start\n");
  memset(ROM,0,BINLENGTH);
  memcpy(ROM,_acsplash,sizeof(_acsplash));

  //ROM[0]=0x55; // game to choose

  //ROM[0xf000]=0; // POI VIA    
  sleep_ms(400);
  
  multicore_launch_core1(core1_main);
  sleep_ms(200);
  reset();
  sleep_ms(200);
 

  //while(ROM[0xf000]==0);  
    ROM[5999]=123;
	fileda=0;
   colecoMenu(1); // POI VIA
    
  // Initial conditions 
  curPath[0]=0;
  while (1) {
	 cmd_executing=false;
     cmd=ROM[0xf000];

     if ((cmd>0)&&!(cmd_executing)) {
      switch (cmd) {
      case 1:  // read file list
        cmd_executing=true;
	    ROM[0xf000]=0;
    	ROM[5999]=0;
		fileda=0;
        colecoMenu(1);
	 	ROM[5999]=1;
      	break;
      case 2:  // run file list
        cmd_executing=true;
    	ROM[0xf000]=0;
		ROM[5999]=0;
	 	LoadGame();
		ROM[5999]=1;
      	break;
      case 3:  // next page
	    sleep_ms(200);
	    cmd_executing=true;
    	ROM[0xf000]=0;
		ROM[5999]=0;
     	colecoMenu(2);
		ROM[5999]=1;
      	break;
      case 4:  // prev page
        cmd_executing=true;
    	ROM[0xf000]=0;
		ROM[5999]=0;
     	colecoMenu(3);
		ROM[5999]=1;
      	break;
	  case 5:  // up dir
        cmd_executing=true;
    	ROM[0xf000]=0;
		ROM[5999]=0;
      	DirUp();
		fileda=lastpos;
		colecoMenu(1);
		ROM[5999]=1;
      	break;
    }     
  }
  }
}

 	
