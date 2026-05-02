/*
//                       SD-1000 MultiCART by Andrea Ottaviani 2024
//
//  SEGA SC-3000 - SG-1000  multicart based on Raspberry Pico board -
//
//  More info on https://github.com/aotta/ 
//
//   parts of code are directly from the A8PicoCart project by Robin Edwards 2023
//  
//   Needs to be a release NOT debug build for the cartridge emulation to work
// 
//   Edit myboard.h depending on the type of flash memory on the pico clone//
//
//   v. 1.0 2024-03-26 : Initial version for Pi Pico 
//
*/


#ifndef __coleco_CART_H__
#define __coleco_CART_H__

#define FLAG_MASK       0x0F000000L

void coleco_cart_main();

#endif