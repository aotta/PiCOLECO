# PiCOLECO
Colecovision flash multicart based on Pico clone

PiCOLECO is a multicart DIY yourself based on cheap "purple" Raspberry Pi Pico clone.
It should works for all roms up to 32k, but there's no enough RAM on Pico to handle 128k or larger multirom.

**WARNING!** "purple" Pico has not the same pinout of original Raspberry "green" ones, you MUST use the clone or you may damage your hardware.

![ScreenShot](https://raw.githubusercontent.com/aotta/PiCOLECO/main/Pictures/picocv1.jpg)
![ScreenShot](https://raw.githubusercontent.com/aotta/PiCOLECO/main/Pictures/picocv2.jpg)

Kicad project and gerbers files for the pcb are in the PCB folder, you need only a diode and a push buttons for resetting the cart if needed or want restart. 
Add you pico clone, and flash the firmware ".uf2" in the Pico by connecting it while pressing button on Pico and drop it in the opened windows on PC.
After flashed with firmware, and every time you have to change your ROMS repository, you can simply connect the Pico to PC and drag&drop "BIN" files  into.

More info on AtariAge forum: https://forums.atariage.com/topic/366660-picoleco-a-diy-multicart-for-colecovision/

Even if the diode should protect your console, **DO NOT CONNECT PICO WHILE INSERTED IN A POWERED ON CONSOLE!**

![ScreenShot](https://raw.githubusercontent.com/aotta/SD-1000/main/Pictures/sega1.jpg)

## Credits
Thank to Robin Robin Edwards and his A8PicoCart (https://github.com/robinhedwards/A8PicoCart), i found very smart his way to manage the Flash RAM and the USB updates, so i admit i took large parte of his code for it!.
I used also the new and fantastic CVBasic for writing menu and file selector in Colecovision, thank to Oscar Toledo (https://nanochess.org/) for creating it.



![ScreenShot](https://raw.githubusercontent.com/aotta//PiCOLECO/main/Pictures/picocv3.jpg)
![ScreenShot](https://raw.githubusercontent.com/aotta//PiCOLECO/main/Pictures/picocv4.jpg)
