EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pi1541-II Faceplate (variant B)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 10650 625
F 0 "M1" H 10650 725 50  0001 C CNN
F 1 "Mounting" H 10650 550 50  0001 C CNN
F 2 "mounting:M3" H 10650 625 50  0001 C CNN
F 3 "" H 10650 625 50  0001 C CNN
	1    10650 625 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5E3B604F
P 10775 625
F 0 "M2" H 10775 725 50  0001 C CNN
F 1 "Mounting" H 10775 550 50  0001 C CNN
F 2 "mounting:M3" H 10775 625 50  0001 C CNN
F 3 "" H 10775 625 50  0001 C CNN
	1    10775 625 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 10900 625
F 0 "M3" H 10900 725 50  0001 C CNN
F 1 "Mounting" H 10900 550 50  0001 C CNN
F 2 "mounting:M3" H 10900 625 50  0001 C CNN
F 3 "" H 10900 625 50  0001 C CNN
	1    10900 625 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5E3B6065
P 11025 625
F 0 "M4" H 11025 725 50  0001 C CNN
F 1 "Mounting" H 11025 550 50  0001 C CNN
F 2 "mounting:M3" H 11025 625 50  0001 C CNN
F 3 "" H 11025 625 50  0001 C CNN
	1    11025 625 
	1    0    0    -1  
$EndComp
$Comp
L I2C_OLED:0.96_I2C_OLED IC1
U 1 1 5E3B718A
P 5375 5025
F 0 "IC1" H 5375 4850 60  0000 C CNN
F 1 "0.96_OLED" H 5350 4975 43  0000 C CNN
F 2 "i2c_oled:0.96_I2C_OLED_NEW" H 5375 5650 60  0001 C CNN
F 3 "" H 5375 5650 60  0001 C CNN
	1    5375 5025
	1    0    0    -1  
$EndComp
Text GLabel 5875 4000 2    60   Input ~ 0
I2C_SDA
Text GLabel 5875 3900 2    60   Input ~ 0
I2C_SCL
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5F12F8C1
P 5525 3200
F 0 "JP2" V 5479 3268 50  0000 L CNN
F 1 "P2_VCC" V 5570 3268 50  0000 L CNN
F 2 "wire_pads:OLED_SEL" H 5525 3200 50  0001 C CNN
F 3 "~" H 5525 3200 50  0001 C CNN
	1    5525 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5525 3000 5525 2925
Wire Wire Line
	5525 3400 5525 3475
$Comp
L power:GND #PWR0111
U 1 1 5F14A813
P 5525 3475
F 0 "#PWR0111" H 5525 3225 50  0001 C CNN
F 1 "GND" H 5530 3302 50  0000 C CNN
F 2 "" H 5525 3475 50  0001 C CNN
F 3 "" H 5525 3475 50  0001 C CNN
	1    5525 3475
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5F14C67F
P 4925 3200
F 0 "JP1" V 4971 3268 50  0000 L CNN
F 1 "P1_GND" V 4880 3268 50  0000 L CNN
F 2 "wire_pads:OLED_SEL" H 4925 3200 50  0001 C CNN
F 3 "~" H 4925 3200 50  0001 C CNN
	1    4925 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4925 3000 4925 2925
$Comp
L power:+3.3V #PWR0112
U 1 1 5F14C686
P 4925 2850
F 0 "#PWR0112" H 4925 2700 50  0001 C CNN
F 1 "+3.3V" H 4940 3023 50  0000 C CNN
F 2 "" H 4925 2850 50  0001 C CNN
F 3 "" H 4925 2850 50  0001 C CNN
	1    4925 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4925 3400 4925 3475
$Comp
L power:GND #PWR0113
U 1 1 5F14C68D
P 4925 3475
F 0 "#PWR0113" H 4925 3225 50  0001 C CNN
F 1 "GND" H 4930 3302 50  0000 C CNN
F 2 "" H 4925 3475 50  0001 C CNN
F 3 "" H 4925 3475 50  0001 C CNN
	1    4925 3475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 3200 5375 3200
Wire Wire Line
	5075 3200 5150 3200
Wire Wire Line
	4925 2925 5525 2925
Wire Wire Line
	4925 2850 4925 2925
Connection ~ 4925 2925
Wire Wire Line
	5875 3900 5450 3900
Wire Wire Line
	5600 4000 5875 4000
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5F3B6F1D
P 6825 4300
F 0 "J4" H 6905 4292 50  0000 L CNN
F 1 "Faceplate" H 6905 4201 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6825 4300 50  0001 C CNN
F 3 "~" H 6825 4300 50  0001 C CNN
	1    6825 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4400 5450 4575
Wire Wire Line
	5600 4500 5600 4575
Wire Wire Line
	5450 3900 5450 4400
Connection ~ 5450 4400
Wire Wire Line
	5600 4000 5600 4500
Connection ~ 5600 4500
Wire Wire Line
	5150 3200 5150 4575
Wire Wire Line
	5300 3200 5300 4575
Wire Wire Line
	5450 4400 6625 4400
Wire Wire Line
	5600 4500 6625 4500
Wire Wire Line
	6625 4200 6475 4200
Wire Wire Line
	6475 4200 6475 4575
Wire Wire Line
	6625 4300 6550 4300
Wire Wire Line
	6550 4300 6550 4075
$Comp
L power:GND #PWR0101
U 1 1 5F4491DA
P 6475 4575
F 0 "#PWR0101" H 6475 4325 50  0001 C CNN
F 1 "GND" H 6480 4402 50  0000 C CNN
F 2 "" H 6475 4575 50  0001 C CNN
F 3 "" H 6475 4575 50  0001 C CNN
	1    6475 4575
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5F44F08B
P 6550 4075
F 0 "#PWR0102" H 6550 3925 50  0001 C CNN
F 1 "+3.3V" H 6565 4248 50  0000 C CNN
F 2 "" H 6550 4075 50  0001 C CNN
F 3 "" H 6550 4075 50  0001 C CNN
	1    6550 4075
	-1   0    0    -1  
$EndComp
Text Notes 7000 6850 0    60   ~ 0
This module is not really necessary as the OLED can also be mounted on the main\nmodule, but I added it as a way of getting a more presentable solution. Variant B\nuses the newer 0.96 OLED displays.
$EndSCHEMATC
