EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ColecoVision Memory Card"
Date "2022-11-15"
Rev "2"
Comp "Jaystonian's Retro Wares"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR01
U 1 1 637403E7
P 1800 1000
F 0 "#PWR01" H 1800 850 50  0001 C CNN
F 1 "+5V" H 1650 1000 50  0000 C CNN
F 2 "" H 1800 1000 50  0001 C CNN
F 3 "" H 1800 1000 50  0001 C CNN
	1    1800 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6374063B
P 1800 2900
F 0 "#PWR02" H 1800 2650 50  0001 C CNN
F 1 "GND" H 1805 2727 50  0000 C CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L CPU2:SST39SF040A-TSOP32 U1
U 1 1 637409FF
P 5550 2150
F 0 "U1" H 5750 3550 50  0000 C CNN
F 1 "SST39SF040A-TSOP32" H 6000 3450 50  0000 C CNN
F 2 "CPU2:TSOP-32_14x8mm_P0.5mm" H 6050 850 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/268/20005022C-708779.pdf       SST39SF010A-55-4C-WHE" H 5550 2450 50  0001 C CNN
	1    5550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 637465E1
P 5550 850
F 0 "#PWR03" H 5550 700 50  0001 C CNN
F 1 "+5V" H 5565 1023 50  0000 C CNN
F 2 "" H 5550 850 50  0001 C CNN
F 3 "" H 5550 850 50  0001 C CNN
	1    5550 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 637467F7
P 5550 3350
F 0 "#PWR04" H 5550 3100 50  0001 C CNN
F 1 "GND" H 5555 3177 50  0000 C CNN
F 2 "" H 5550 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Text Label 2400 1250 2    50   ~ 0
A0
Wire Wire Line
	2400 1250 2250 1250
Text Label 2400 1350 2    50   ~ 0
A1
Wire Wire Line
	2400 1350 2250 1350
Text Label 2400 1450 2    50   ~ 0
A2
Wire Wire Line
	2400 1450 2250 1450
Text Label 2400 1550 2    50   ~ 0
A3
Wire Wire Line
	2400 1550 2250 1550
Text Label 2400 1650 2    50   ~ 0
A4
Wire Wire Line
	2400 1650 2250 1650
Text Label 2400 1750 2    50   ~ 0
A5
Wire Wire Line
	2400 1750 2250 1750
Text Label 2400 1850 2    50   ~ 0
A6
Wire Wire Line
	2400 1850 2250 1850
Text Label 2400 1950 2    50   ~ 0
A7
Wire Wire Line
	2400 1950 2250 1950
Text Label 2400 2050 2    50   ~ 0
A8
Wire Wire Line
	2400 2050 2250 2050
Text Label 2400 2150 2    50   ~ 0
A9
Wire Wire Line
	2400 2150 2250 2150
Text Label 2400 2250 2    50   ~ 0
A10
Wire Wire Line
	2400 2250 2250 2250
Text Label 2400 2350 2    50   ~ 0
A11
Wire Wire Line
	2400 2350 2250 2350
Text Label 2400 2450 2    50   ~ 0
A12
Wire Wire Line
	2400 2450 2250 2450
Text Label 2400 2550 2    50   ~ 0
A13
Wire Wire Line
	2400 2550 2250 2550
Text Label 2400 2650 2    50   ~ 0
A14
Wire Wire Line
	2400 2650 2250 2650
Text Label 4800 950  0    50   ~ 0
A0
Wire Wire Line
	4800 950  4950 950 
Text Label 4800 1050 0    50   ~ 0
A1
Wire Wire Line
	4800 1050 4950 1050
Text Label 4800 1150 0    50   ~ 0
A2
Wire Wire Line
	4800 1150 4950 1150
Text Label 4800 1250 0    50   ~ 0
A3
Wire Wire Line
	4800 1250 4950 1250
Text Label 4800 1350 0    50   ~ 0
A4
Wire Wire Line
	4800 1350 4950 1350
Text Label 4800 1450 0    50   ~ 0
A5
Wire Wire Line
	4800 1450 4950 1450
Text Label 4800 1550 0    50   ~ 0
A6
Wire Wire Line
	4800 1550 4950 1550
Text Label 4800 1650 0    50   ~ 0
A7
Wire Wire Line
	4800 1650 4950 1650
Text Label 4800 1750 0    50   ~ 0
A8
Wire Wire Line
	4800 1750 4950 1750
Text Label 4800 1850 0    50   ~ 0
A9
Wire Wire Line
	4800 1850 4950 1850
Text Label 4800 1950 0    50   ~ 0
A10
Wire Wire Line
	4800 1950 4950 1950
Text Label 4800 2050 0    50   ~ 0
A11
Wire Wire Line
	4800 2050 4950 2050
Text Label 4800 2150 0    50   ~ 0
A12
Wire Wire Line
	4800 2150 4950 2150
Text Label 4800 2250 0    50   ~ 0
A13
Wire Wire Line
	4800 2250 4950 2250
Text Label 4800 2350 0    50   ~ 0
XA14
Wire Wire Line
	4800 2350 4950 2350
Text Label 1200 1850 0    50   ~ 0
D0
Wire Wire Line
	1200 1850 1350 1850
Text Label 1200 1950 0    50   ~ 0
D1
Wire Wire Line
	1200 1950 1350 1950
Text Label 1200 2050 0    50   ~ 0
D2
Wire Wire Line
	1200 2050 1350 2050
Text Label 1200 2150 0    50   ~ 0
D3
Wire Wire Line
	1200 2150 1350 2150
Text Label 1200 2250 0    50   ~ 0
D4
Wire Wire Line
	1200 2250 1350 2250
Text Label 1200 2350 0    50   ~ 0
D5
Wire Wire Line
	1200 2350 1350 2350
Text Label 1200 2450 0    50   ~ 0
D6
Wire Wire Line
	1200 2450 1350 2450
Text Label 1200 2550 0    50   ~ 0
D7
Wire Wire Line
	1200 2550 1350 2550
Text Label 6300 950  2    50   ~ 0
D0
Wire Wire Line
	6300 950  6150 950 
Text Label 6300 1050 2    50   ~ 0
D1
Wire Wire Line
	6300 1050 6150 1050
Text Label 6300 1150 2    50   ~ 0
D2
Wire Wire Line
	6300 1150 6150 1150
Text Label 6300 1250 2    50   ~ 0
D3
Wire Wire Line
	6300 1250 6150 1250
Text Label 6300 1350 2    50   ~ 0
D4
Wire Wire Line
	6300 1350 6150 1350
Text Label 6300 1450 2    50   ~ 0
D5
Wire Wire Line
	6300 1450 6150 1450
Text Label 6300 1550 2    50   ~ 0
D6
Wire Wire Line
	6300 1550 6150 1550
Text Label 6300 1650 2    50   ~ 0
D7
Wire Wire Line
	6300 1650 6150 1650
Text Label 4800 2450 0    50   ~ 0
SA15
Wire Wire Line
	4800 2450 4950 2450
$Comp
L CPU2:ColecoVision_CardExpansionSlot X1
U 1 1 6375A606
P 1800 2000
F 0 "X1" H 2000 3000 50  0000 C CNN
F 1 "CVS-Card" H 2000 2900 50  0000 C CNN
F 2 "CPU2:Coleco_Expansion_Card" H 1800 3050 50  0001 C CNN
F 3 "" H 1800 3050 50  0001 C CNN
	1    1800 2000
	1    0    0    -1  
$EndComp
Text Label 4700 2950 0    50   ~ 0
~RWE
Wire Wire Line
	4700 2950 4950 2950
Text Label 4700 3150 0    50   ~ 0
~CE0
Wire Wire Line
	4700 3150 4950 3150
Text Label 4700 3250 0    50   ~ 0
~FOE
Wire Wire Line
	4700 3250 4950 3250
Text Label 4800 2550 0    50   ~ 0
SA16
Wire Wire Line
	4800 2550 4950 2550
Text Label 4800 2650 0    50   ~ 0
SA17
Wire Wire Line
	4800 2650 4950 2650
Text Label 4800 2750 0    50   ~ 0
SA18
Wire Wire Line
	4800 2750 4950 2750
Text Label 900  4750 0    50   ~ 0
XA14
Wire Wire Line
	900  4750 1050 4750
Text Label 900  4650 0    50   ~ 0
A14
Wire Wire Line
	900  4650 1050 4650
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 637E54E9
P 1250 4750
F 0 "J1" H 1330 4792 50  0000 L CNN
F 1 "32KB_or_16KB" H 1330 4701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1250 4750 50  0001 C CNN
F 3 "~" H 1250 4750 50  0001 C CNN
	1    1250 4750
	1    0    0    -1  
$EndComp
Text Label 900  4850 0    50   ~ 0
SA14
Wire Wire Line
	900  4850 1050 4850
Text Label 8800 4900 0    50   ~ 0
SA15
Text Label 8800 5000 0    50   ~ 0
SA16
Text Label 8800 5100 0    50   ~ 0
SA17
Text Label 8800 5200 0    50   ~ 0
SA18
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 6380938D
P 1250 6300
F 0 "J5" H 1330 6342 50  0000 L CNN
F 1 "Prog Header" H 1330 6251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 1250 6300 50  0001 C CNN
F 3 "~" H 1250 6300 50  0001 C CNN
	1    1250 6300
	1    0    0    -1  
$EndComp
Text Label 800  6600 0    50   ~ 0
~RWE
Wire Wire Line
	800  6600 1050 6600
Text Label 800  6500 0    50   ~ 0
~POE
Wire Wire Line
	800  6500 1050 6500
Text Label 8800 5300 0    50   ~ 0
~RWE
Text Label 8800 4800 0    50   ~ 0
SA14
Text Label 800  6100 0    50   ~ 0
SA15
Text Label 800  6200 0    50   ~ 0
SA16
Text Label 800  6300 0    50   ~ 0
SA17
Text Label 800  6400 0    50   ~ 0
SA18
Wire Wire Line
	800  6100 1050 6100
Wire Wire Line
	800  6200 1050 6200
Wire Wire Line
	800  6300 1050 6300
Wire Wire Line
	800  6400 1050 6400
$Comp
L Switch:SW_DIP_x05 SW2
U 1 1 6384EC4E
P 1350 3750
F 0 "SW2" H 1350 4217 50  0000 C CNN
F 1 "Memory Select" H 1350 4126 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx05_Piano_CTS_Series194-5MSTN_W7.62mm_P2.54mm" H 1350 3750 50  0001 C CNN
F 3 "~" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
Text Label 900  3650 0    50   ~ 0
SA15
Wire Wire Line
	900  3650 1050 3650
Text Label 900  3750 0    50   ~ 0
SA16
Wire Wire Line
	900  3750 1050 3750
Text Label 900  3850 0    50   ~ 0
SA17
Wire Wire Line
	900  3850 1050 3850
Text Label 900  3950 0    50   ~ 0
SA18
Wire Wire Line
	900  3950 1050 3950
Text Label 900  3550 0    50   ~ 0
SA14
Wire Wire Line
	900  3550 1050 3550
$Comp
L power:GND #PWR012
U 1 1 63855834
P 1650 3950
F 0 "#PWR012" H 1650 3700 50  0001 C CNN
F 1 "GND" H 1655 3777 50  0000 C CNN
F 2 "" H 1650 3950 50  0001 C CNN
F 3 "" H 1650 3950 50  0001 C CNN
	1    1650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3550 1650 3650
Connection ~ 1650 3950
Connection ~ 1650 3650
Wire Wire Line
	1650 3650 1650 3750
Connection ~ 1650 3750
Wire Wire Line
	1650 3750 1650 3850
Connection ~ 1650 3850
Wire Wire Line
	1650 3850 1650 3950
$Comp
L Device:R_Network06_US RN1
U 1 1 6385A4A4
P 9250 5100
F 0 "RN1" V 8850 5050 50  0000 C CNN
F 1 "10k" V 8850 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP7" V 9625 5100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9250 5100 50  0001 C CNN
	1    9250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 5300 9050 5300
Wire Wire Line
	8800 5200 9050 5200
Wire Wire Line
	8800 5100 9050 5100
Wire Wire Line
	8800 5000 9050 5000
Wire Wire Line
	8800 4900 9050 4900
Wire Wire Line
	8800 4800 9050 4800
$Comp
L CPU2:SST39SF040A-TSOP32 U2
U 1 1 6375E14C
P 7500 2150
F 0 "U2" H 7700 3550 50  0000 C CNN
F 1 "SST39SF040A-TSOP32" H 7950 3450 50  0000 C CNN
F 2 "CPU2:TSOP-32_14x8mm_P0.5mm" H 8000 850 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/268/20005022C-708779.pdf       SST39SF010A-55-4C-WHE" H 7500 2450 50  0001 C CNN
	1    7500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 6375E152
P 7500 850
F 0 "#PWR05" H 7500 700 50  0001 C CNN
F 1 "+5V" H 7515 1023 50  0000 C CNN
F 2 "" H 7500 850 50  0001 C CNN
F 3 "" H 7500 850 50  0001 C CNN
	1    7500 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6375E158
P 7500 3350
F 0 "#PWR06" H 7500 3100 50  0001 C CNN
F 1 "GND" H 7505 3177 50  0000 C CNN
F 2 "" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
Text Label 6750 950  0    50   ~ 0
A0
Wire Wire Line
	6750 950  6900 950 
Text Label 6750 1050 0    50   ~ 0
A1
Wire Wire Line
	6750 1050 6900 1050
Text Label 6750 1150 0    50   ~ 0
A2
Wire Wire Line
	6750 1150 6900 1150
Text Label 6750 1250 0    50   ~ 0
A3
Wire Wire Line
	6750 1250 6900 1250
Text Label 6750 1350 0    50   ~ 0
A4
Wire Wire Line
	6750 1350 6900 1350
Text Label 6750 1450 0    50   ~ 0
A5
Wire Wire Line
	6750 1450 6900 1450
Text Label 6750 1550 0    50   ~ 0
A6
Wire Wire Line
	6750 1550 6900 1550
Text Label 6750 1650 0    50   ~ 0
A7
Wire Wire Line
	6750 1650 6900 1650
Text Label 6750 1750 0    50   ~ 0
A8
Wire Wire Line
	6750 1750 6900 1750
Text Label 6750 1850 0    50   ~ 0
A9
Wire Wire Line
	6750 1850 6900 1850
Text Label 6750 1950 0    50   ~ 0
A10
Wire Wire Line
	6750 1950 6900 1950
Text Label 6750 2050 0    50   ~ 0
A11
Wire Wire Line
	6750 2050 6900 2050
Text Label 6750 2150 0    50   ~ 0
A12
Wire Wire Line
	6750 2150 6900 2150
Text Label 6750 2250 0    50   ~ 0
A13
Wire Wire Line
	6750 2250 6900 2250
Text Label 6750 2350 0    50   ~ 0
XA14
Wire Wire Line
	6750 2350 6900 2350
Text Label 8250 950  2    50   ~ 0
D0
Wire Wire Line
	8250 950  8100 950 
Text Label 8250 1050 2    50   ~ 0
D1
Wire Wire Line
	8250 1050 8100 1050
Text Label 8250 1150 2    50   ~ 0
D2
Wire Wire Line
	8250 1150 8100 1150
Text Label 8250 1250 2    50   ~ 0
D3
Wire Wire Line
	8250 1250 8100 1250
Text Label 8250 1350 2    50   ~ 0
D4
Wire Wire Line
	8250 1350 8100 1350
Text Label 8250 1450 2    50   ~ 0
D5
Wire Wire Line
	8250 1450 8100 1450
Text Label 8250 1550 2    50   ~ 0
D6
Wire Wire Line
	8250 1550 8100 1550
Text Label 8250 1650 2    50   ~ 0
D7
Wire Wire Line
	8250 1650 8100 1650
Text Label 6750 2450 0    50   ~ 0
SA15
Wire Wire Line
	6750 2450 6900 2450
Text Label 6650 2950 0    50   ~ 0
~RWE
Wire Wire Line
	6650 2950 6900 2950
Text Label 6650 3150 0    50   ~ 0
~CE1
Wire Wire Line
	6650 3150 6900 3150
Text Label 6650 3250 0    50   ~ 0
~FOE
Wire Wire Line
	6650 3250 6900 3250
Text Label 6750 2550 0    50   ~ 0
SA16
Wire Wire Line
	6750 2550 6900 2550
Text Label 6750 2650 0    50   ~ 0
SA17
Wire Wire Line
	6750 2650 6900 2650
Text Label 6750 2750 0    50   ~ 0
SA18
Wire Wire Line
	6750 2750 6900 2750
Text Label 1100 1400 0    50   ~ 0
~FCE0
Wire Wire Line
	1100 1400 1350 1400
Text Label 1100 1500 0    50   ~ 0
~FCE1
Wire Wire Line
	1100 1500 1350 1500
Text Label 1100 1600 0    50   ~ 0
~FCE2
Wire Wire Line
	1100 1600 1350 1600
Text Label 1100 1700 0    50   ~ 0
~FCE3
Wire Wire Line
	1100 1700 1350 1700
$Comp
L 74xx:74LS08 U7
U 1 1 63BB35FC
P 9550 1700
F 0 "U7" H 9550 2025 50  0000 C CNN
F 1 "74LS08" H 9550 1934 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9550 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9550 1700 50  0001 C CNN
	1    9550 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U7
U 2 1 63BB3602
P 9550 2100
F 0 "U7" H 9550 2425 50  0000 C CNN
F 1 "74LS08" H 9550 2334 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9550 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9550 2100 50  0001 C CNN
	2    9550 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U7
U 3 1 63BB3608
P 9550 2500
F 0 "U7" H 9550 2825 50  0000 C CNN
F 1 "74LS08" H 9550 2734 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9550 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9550 2500 50  0001 C CNN
	3    9550 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U7
U 4 1 63BB360E
P 9550 2900
F 0 "U7" H 9550 3225 50  0000 C CNN
F 1 "74LS08" H 9550 3134 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9550 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9550 2900 50  0001 C CNN
	4    9550 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U7
U 5 1 63BB3614
P 10400 2300
F 0 "U7" H 10630 2346 50  0000 L CNN
F 1 "74LS08" H 10630 2255 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 10400 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10400 2300 50  0001 C CNN
	5    10400 2300
	1    0    0    -1  
$EndComp
Text Label 10100 2100 2    50   ~ 0
~FCE01
Wire Wire Line
	10100 2100 9850 2100
Text Label 10100 1700 2    50   ~ 0
~FCE23
Wire Wire Line
	10100 1700 9850 1700
Text Label 10100 2500 2    50   ~ 0
~FCEX
Wire Wire Line
	10100 2500 9850 2500
Text Label 9000 2000 0    50   ~ 0
~FCE0
Wire Wire Line
	9000 2000 9250 2000
Text Label 9000 2200 0    50   ~ 0
~FCE1
Wire Wire Line
	9000 2200 9250 2200
Text Label 9000 1600 0    50   ~ 0
~FCE2
Wire Wire Line
	9000 1600 9250 1600
Text Label 9000 1800 0    50   ~ 0
~FCE3
Wire Wire Line
	9000 1800 9250 1800
Text Label 9000 2400 0    50   ~ 0
~FCE01
Wire Wire Line
	9000 2400 9250 2400
Text Label 9000 2600 0    50   ~ 0
~FCE23
Wire Wire Line
	9000 2600 9250 2600
$Comp
L power:GND #PWR0104
U 1 1 63BB362C
P 9250 3000
F 0 "#PWR0104" H 9250 2750 50  0001 C CNN
F 1 "GND" H 9255 2827 50  0000 C CNN
F 2 "" H 9250 3000 50  0001 C CNN
F 3 "" H 9250 3000 50  0001 C CNN
	1    9250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2800 9250 3000
Connection ~ 9250 3000
$Comp
L power:GND #PWR0105
U 1 1 63BB3634
P 10400 2800
F 0 "#PWR0105" H 10400 2550 50  0001 C CNN
F 1 "GND" H 10405 2627 50  0000 C CNN
F 2 "" H 10400 2800 50  0001 C CNN
F 3 "" H 10400 2800 50  0001 C CNN
	1    10400 2800
	1    0    0    -1  
$EndComp
NoConn ~ 9850 2900
$Comp
L power:+5V #PWR0107
U 1 1 63BE7EB9
P 9450 4800
F 0 "#PWR0107" H 9450 4650 50  0001 C CNN
F 1 "+5V" H 9300 4800 50  0000 C CNN
F 2 "" H 9450 4800 50  0001 C CNN
F 3 "" H 9450 4800 50  0001 C CNN
	1    9450 4800
	0    1    -1   0   
$EndComp
Text Label 900  5500 0    50   ~ 0
~FOE
Wire Wire Line
	900  5500 1050 5500
Text Label 900  5400 0    50   ~ 0
~POE
Wire Wire Line
	900  5400 1050 5400
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 63C8965F
P 1250 5500
F 0 "J2" H 1330 5542 50  0000 L CNN
F 1 "Prog_or_Use" H 1330 5451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1250 5500 50  0001 C CNN
F 3 "~" H 1250 5500 50  0001 C CNN
	1    1250 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 63CBB0AF
P 1050 5600
F 0 "#PWR0108" H 1050 5350 50  0001 C CNN
F 1 "GND" V 1055 5472 50  0000 R CNN
F 2 "" H 1050 5600 50  0001 C CNN
F 3 "" H 1050 5600 50  0001 C CNN
	1    1050 5600
	0    1    1    0   
$EndComp
Text Label 5150 3750 0    50   ~ 0
~FCE01
Wire Wire Line
	5150 3750 5400 3750
Text Label 5150 3850 0    50   ~ 0
~FCE23
Wire Wire Line
	5150 3850 5400 3850
Text Label 5150 3950 0    50   ~ 0
~FCEX
Wire Wire Line
	5150 3950 5400 3950
Text Label 5150 4050 0    50   ~ 0
~CE0
Wire Wire Line
	5150 4050 5700 4050
Text Label 7100 3750 0    50   ~ 0
~FCE01
Wire Wire Line
	7100 3750 7350 3750
Text Label 7100 3850 0    50   ~ 0
~FCE23
Wire Wire Line
	7100 3850 7350 3850
Text Label 7100 3950 0    50   ~ 0
~FCEX
Wire Wire Line
	7100 3950 7350 3950
Text Label 7100 4050 0    50   ~ 0
~CE1
Wire Wire Line
	7100 4050 7650 4050
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 63F5573E
P 5550 3750
F 0 "JP6" H 5550 3750 50  0000 C CNN
F 1 "SJE01" H 5850 3750 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5550 3750 50  0001 C CNN
F 3 "~" H 5550 3750 50  0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 63F76517
P 5550 3850
F 0 "JP7" H 5550 3850 50  0000 C CNN
F 1 "SJE23" H 5850 3850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5550 3850 50  0001 C CNN
F 3 "~" H 5550 3850 50  0001 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 63F972A9
P 5550 3950
F 0 "JP8" H 5550 3950 50  0000 C CNN
F 1 "SJEX" H 5850 3950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5550 3950 50  0001 C CNN
F 3 "~" H 5550 3950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3750 5700 3850
Connection ~ 5700 3850
Wire Wire Line
	5700 3850 5700 3950
Connection ~ 5700 3950
Wire Wire Line
	5700 3950 5700 4050
$Comp
L Jumper:SolderJumper_2_Open JP14
U 1 1 63FBB5B2
P 7500 3750
F 0 "JP14" H 7500 3750 50  0000 C CNN
F 1 "SJE01" H 7800 3750 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7500 3750 50  0001 C CNN
F 3 "~" H 7500 3750 50  0001 C CNN
	1    7500 3750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP15
U 1 1 63FBB5B8
P 7500 3850
F 0 "JP15" H 7500 3850 50  0000 C CNN
F 1 "SJE23" H 7800 3850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7500 3850 50  0001 C CNN
F 3 "~" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP16
U 1 1 63FBB5BE
P 7500 3950
F 0 "JP16" H 7500 3950 50  0000 C CNN
F 1 "SJEX" H 7800 3950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7500 3950 50  0001 C CNN
F 3 "~" H 7500 3950 50  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
Connection ~ 7650 3950
Wire Wire Line
	7650 3950 7650 4050
Connection ~ 7650 3850
Wire Wire Line
	7650 3850 7650 3950
Wire Wire Line
	7650 3750 7650 3850
$Comp
L Device:C_Small C1
U 1 1 650EFE9B
P 9350 3850
F 0 "C1" H 9442 3896 50  0000 L CNN
F 1 "0.1u" H 9442 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9350 3850 50  0001 C CNN
F 3 "~" H 9350 3850 50  0001 C CNN
	1    9350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 650F0FF6
P 9700 3850
F 0 "C2" H 9792 3896 50  0000 L CNN
F 1 "0.1u" H 9792 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9700 3850 50  0001 C CNN
F 3 "~" H 9700 3850 50  0001 C CNN
	1    9700 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 65114AE3
P 10050 3850
F 0 "C3" H 10142 3896 50  0000 L CNN
F 1 "0.1u" H 10142 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10050 3850 50  0001 C CNN
F 3 "~" H 10050 3850 50  0001 C CNN
	1    10050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 65259C79
P 9350 3750
F 0 "#PWR0110" H 9350 3600 50  0001 C CNN
F 1 "+5V" H 9365 3923 50  0000 C CNN
F 2 "" H 9350 3750 50  0001 C CNN
F 3 "" H 9350 3750 50  0001 C CNN
	1    9350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3750 9700 3750
Connection ~ 9350 3750
Connection ~ 9700 3750
Wire Wire Line
	9700 3750 10050 3750
Connection ~ 9700 3950
Wire Wire Line
	9700 3950 9350 3950
Wire Wire Line
	10050 3950 9700 3950
$Comp
L power:GND #PWR0111
U 1 1 6533818E
P 9350 3950
F 0 "#PWR0111" H 9350 3700 50  0001 C CNN
F 1 "GND" H 9355 3777 50  0000 C CNN
F 2 "" H 9350 3950 50  0001 C CNN
F 3 "" H 9350 3950 50  0001 C CNN
	1    9350 3950
	1    0    0    -1  
$EndComp
Connection ~ 9350 3950
$Comp
L power:+5V #PWR0101
U 1 1 639F0A8E
P 10400 1800
F 0 "#PWR0101" H 10400 1650 50  0001 C CNN
F 1 "+5V" H 10415 1973 50  0000 C CNN
F 2 "" H 10400 1800 50  0001 C CNN
F 3 "" H 10400 1800 50  0001 C CNN
	1    10400 1800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 639FA712
P 2300 4750
F 0 "JP1" V 2254 4818 50  0000 L CNN
F 1 "32KB or 16KB" V 2345 4818 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm" H 2300 4750 50  0001 C CNN
F 3 "~" H 2300 4750 50  0001 C CNN
	1    2300 4750
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 63A05606
P 2300 5550
F 0 "JP2" V 2254 5618 50  0000 L CNN
F 1 "Prog or Use" V 2345 5618 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm" H 2300 5550 50  0001 C CNN
F 3 "~" H 2300 5550 50  0001 C CNN
	1    2300 5550
	0    1    1    0   
$EndComp
Text Label 2000 4750 0    50   ~ 0
XA14
Wire Wire Line
	2000 4750 2150 4750
Text Label 2000 4550 0    50   ~ 0
A14
Text Label 2000 4950 0    50   ~ 0
SA14
Text Label 2000 5550 0    50   ~ 0
~FOE
Wire Wire Line
	2000 5550 2150 5550
Text Label 2000 5350 0    50   ~ 0
~POE
$Comp
L power:GND #PWR0102
U 1 1 63A0ED31
P 2300 5750
F 0 "#PWR0102" H 2300 5500 50  0001 C CNN
F 1 "GND" V 2305 5622 50  0000 R CNN
F 2 "" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0001 C CNN
	1    2300 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4950 2300 4950
Wire Wire Line
	2000 4550 2300 4550
Wire Wire Line
	2000 5350 2300 5350
Text Notes 3600 7650 0    50   ~ 0
MODES OF USE:\n\nA) Single flash chip\n- select 32KB or 16KB rom type (J1/JP1)\n- select 80-BF for typical 16KB roms, or 80-FF for 32KB roms.\n- 2nd flash chip must be absent and its jumpers may be ignored.\n\nB) Dual flash chips (32KB double memory)\n- select 16KB rom type (J1/JP1)\n- One chip must select 80-BF, the other must select C0-FF. Your roms will need\n to be split in half for two 16KB binary files (low and high), one for each chip.\n- Each chip must be marked low-16KB or high-16KB, consistently for all ROMs.\n\n**NOTES**\nAll modes require 32KB mode for re-programming flash chips.\nRe-programming also requires SW2 switches to all be OPEN and\nJ2/JP2 must be PROG. Revert jumper back to USE when finished.\nThe re-programming adapter must have the pullups for block select and a\njumper to select which flash chip to reprogram.\n\nWhile in 16KB mode, single or dual chip, Address 14 in SW2 \nMemory Select will be included in selecting memory. 32KB ROMs will\nrequire A14 and this jumper switch will be ignored by J1/JP1 configuration.\n\n8-12KB ROMs must be right-padded to 16KB with 0's.\n20-24KB ROMs must be right-padded to 32KB with 0's.\n\n
Wire Notes Line
	3500 5400 6900 5400
Wire Notes Line
	6900 5400 6900 7650
Wire Notes Line
	6900 7650 3500 7650
Wire Notes Line
	3500 7650 3500 5400
$Comp
L Device:R_Small_US R1
U 1 1 63760342
P 10050 4800
F 0 "R1" V 10050 4800 50  0000 C CNN
F 1 "10K" V 10050 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 4800 50  0001 C CNN
F 3 "~" H 10050 4800 50  0001 C CNN
	1    10050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 6377C46D
P 10050 4900
F 0 "R2" V 10050 4900 50  0000 C CNN
F 1 "10K" V 10050 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 4900 50  0001 C CNN
F 3 "~" H 10050 4900 50  0001 C CNN
	1    10050 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 637852AF
P 10050 5000
F 0 "R3" V 10050 5000 50  0000 C CNN
F 1 "10K" V 10050 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 5000 50  0001 C CNN
F 3 "~" H 10050 5000 50  0001 C CNN
	1    10050 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6378E0D7
P 10050 5100
F 0 "R4" V 10050 5100 50  0000 C CNN
F 1 "10K" V 10050 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 5100 50  0001 C CNN
F 3 "~" H 10050 5100 50  0001 C CNN
	1    10050 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 63796F34
P 10050 5200
F 0 "R5" V 10050 5200 50  0000 C CNN
F 1 "10K" V 10050 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 5200 50  0001 C CNN
F 3 "~" H 10050 5200 50  0001 C CNN
	1    10050 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 6379FFAF
P 10050 5300
F 0 "R6" V 10050 5300 50  0000 C CNN
F 1 "10K" V 10050 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 5300 50  0001 C CNN
F 3 "~" H 10050 5300 50  0001 C CNN
	1    10050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 5300 10150 5200
Connection ~ 10150 4900
Wire Wire Line
	10150 4900 10150 4800
Connection ~ 10150 5000
Wire Wire Line
	10150 5000 10150 4900
Connection ~ 10150 5100
Wire Wire Line
	10150 5100 10150 5000
Connection ~ 10150 5200
Wire Wire Line
	10150 5200 10150 5100
$Comp
L power:+5V #PWR0103
U 1 1 637B24D8
P 10150 4800
F 0 "#PWR0103" H 10150 4650 50  0001 C CNN
F 1 "+5V" H 10050 4900 50  0000 C CNN
F 2 "" H 10150 4800 50  0001 C CNN
F 3 "" H 10150 4800 50  0001 C CNN
	1    10150 4800
	0    1    -1   0   
$EndComp
Connection ~ 10150 4800
Text Label 9700 4900 0    50   ~ 0
SA15
Text Label 9700 5000 0    50   ~ 0
SA16
Text Label 9700 5100 0    50   ~ 0
SA17
Text Label 9700 5200 0    50   ~ 0
SA18
Text Label 9700 5300 0    50   ~ 0
~RWE
Text Label 9700 4800 0    50   ~ 0
SA14
Wire Wire Line
	9700 5300 9950 5300
Wire Wire Line
	9700 5200 9950 5200
Wire Wire Line
	9700 5100 9950 5100
Wire Wire Line
	9700 5000 9950 5000
Wire Wire Line
	9700 4900 9950 4900
Wire Wire Line
	9700 4800 9950 4800
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 63778F9D
P 2250 3550
F 0 "JP3" H 2250 3550 50  0000 C CNN
F 1 "SA14" H 2550 3550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 3550 50  0001 C CNN
F 3 "~" H 2250 3550 50  0001 C CNN
	1    2250 3550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 63778FA3
P 2250 3650
F 0 "JP4" H 2250 3650 50  0000 C CNN
F 1 "SA15" H 2550 3650 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 3650 50  0001 C CNN
F 3 "~" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 63778FA9
P 2250 3750
F 0 "JP5" H 2250 3750 50  0000 C CNN
F 1 "SA16" H 2550 3750 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 3750 50  0001 C CNN
F 3 "~" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP9
U 1 1 63783A91
P 2250 3850
F 0 "JP9" H 2250 3850 50  0000 C CNN
F 1 "SA17" H 2550 3850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 3850 50  0001 C CNN
F 3 "~" H 2250 3850 50  0001 C CNN
	1    2250 3850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 63783A97
P 2250 3950
F 0 "JP10" H 2250 3950 50  0000 C CNN
F 1 "SA18" H 2550 3950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 3950 50  0001 C CNN
F 3 "~" H 2250 3950 50  0001 C CNN
	1    2250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6378DCB9
P 2400 4000
F 0 "#PWR0106" H 2400 3750 50  0001 C CNN
F 1 "GND" H 2405 3827 50  0000 C CNN
F 2 "" H 2400 4000 50  0001 C CNN
F 3 "" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 2400 3950
Connection ~ 2400 3650
Wire Wire Line
	2400 3650 2400 3550
Connection ~ 2400 3750
Wire Wire Line
	2400 3750 2400 3650
Connection ~ 2400 3850
Wire Wire Line
	2400 3850 2400 3750
Connection ~ 2400 3950
Wire Wire Line
	2400 3950 2400 3850
Text Label 1950 3650 0    50   ~ 0
SA15
Wire Wire Line
	1950 3650 2100 3650
Text Label 1950 3750 0    50   ~ 0
SA16
Wire Wire Line
	1950 3750 2100 3750
Text Label 1950 3850 0    50   ~ 0
SA17
Wire Wire Line
	1950 3850 2100 3850
Text Label 1950 3950 0    50   ~ 0
SA18
Wire Wire Line
	1950 3950 2100 3950
Text Label 1950 3550 0    50   ~ 0
SA14
Wire Wire Line
	1950 3550 2100 3550
$EndSCHEMATC
