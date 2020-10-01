EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pi1541-II Backplate"
Date ""
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x01_Female M1
U 1 1 5E3B603D
P 10650 625
F 0 "M1" H 10650 725 50  0001 C CNN
F 1 "Mounting" H 10650 550 50  0001 C CNN
F 2 "mounting:M3_pin" H 10650 625 50  0001 C CNN
F 3 "" H 10650 625 50  0001 C CNN
	1    10650 625 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M2
U 1 1 5E3B604F
P 10775 625
F 0 "M2" H 10775 725 50  0001 C CNN
F 1 "Mounting" H 10775 550 50  0001 C CNN
F 2 "mounting:M3_pin" H 10775 625 50  0001 C CNN
F 3 "" H 10775 625 50  0001 C CNN
	1    10775 625 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M3
U 1 1 5E3B605A
P 10900 625
F 0 "M3" H 10900 725 50  0001 C CNN
F 1 "Mounting" H 10900 550 50  0001 C CNN
F 2 "mounting:M3_pin" H 10900 625 50  0001 C CNN
F 3 "" H 10900 625 50  0001 C CNN
	1    10900 625 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M4
U 1 1 5E3B6065
P 11025 625
F 0 "M4" H 11025 725 50  0001 C CNN
F 1 "Mounting" H 11025 550 50  0001 C CNN
F 2 "mounting:M3_pin" H 11025 625 50  0001 C CNN
F 3 "" H 11025 625 50  0001 C CNN
	1    11025 625 
	0    -1   -1   0   
$EndComp
Text Notes 7000 6750 0    60   ~ 0
This PCB does not have any components, it's only purpose is to have something on the\nbottom so that the user does not need to handle the electronics directly.
Wire Wire Line
	10650 825  10650 900 
Wire Wire Line
	10650 900  10775 900 
Wire Wire Line
	11025 900  11025 825 
Wire Wire Line
	10775 825  10775 900 
Connection ~ 10775 900 
Wire Wire Line
	10775 900  10900 900 
Wire Wire Line
	10900 825  10900 900 
Connection ~ 10900 900 
Wire Wire Line
	10900 900  11025 900 
$EndSCHEMATC
