EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:wickerlib
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 USB Power Connector Module"
Date "18 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 5833208F
P 3050 4275
F 0 "#PWR01" H 3050 4025 50  0001 C CNN
F 1 "GND" H 3050 4125 50  0000 C CNN
F 2 "" H 3050 4275 50  0000 C CNN
F 3 "" H 3050 4275 50  0000 C CNN
	1    3050 4275
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58844197
P 3050 3650
F 0 "#PWR02" H 3050 3500 50  0001 C CNN
F 1 "VCC" H 3050 3800 50  0000 C CNN
F 2 "" H 3050 3650 50  0000 C CNN
F 3 "" H 3050 3650 50  0000 C CNN
	1    3050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3650 3050 3825
Wire Wire Line
	3050 3825 2925 3825
Wire Wire Line
	2925 4225 3050 4225
Wire Wire Line
	3050 4225 3050 4275
$Comp
L CONN-USB-MICRO-B-10118193 J1
U 1 1 58844117
P 2575 4025
F 0 "J1" H 2425 4375 50  0000 L CNN
F 1 "MICRO-B" H 2425 3675 50  0000 L CNN
F 2 "Crazy_Circuits:USB-CONNECTOR-2x2" H 2575 3675 50  0001 C CIN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10118193.pdf" V 2050 4050 5   0001 C CNN
F 4 "USB MICRO-B RECEPTACLE 5PIN SMT R/A STUDS" H 2575 3675 50  0001 C CIN "Description"
F 5 "Amphenol" H 2575 3675 50  0001 C CIN "MF_Name"
F 6 "10118193-0001LF" H 2575 3675 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 2575 3675 50  0001 C CIN "S1_Name"
F 8 "609-4616-1-ND" H 2575 3675 50  0001 C CIN "S1_PN"
	1    2575 4025
	1    0    0    -1  
$EndComp
$EndSCHEMATC
