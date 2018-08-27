EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "1x2 LED 1206 SMT Module"
Date "31 Jan 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:LED LED1
U 1 1 5890E035
P 4700 4325
F 0 "LED1" H 4775 4375 50  0000 L CNN
F 1 "GREEN" H 4775 4275 50  0000 L CNN
F 2 "Crazy_Circuits:LED-SMT-1206-1x2-UNLIMITED" H 4700 4125 50  0001 C CIN
F 3 "" V 4700 4325 10  0001 C CNN
F 4 "LED GREEN CLEAR 1206 SMD" H 4700 4325 60  0001 C CNN "Description"
F 5 "Lite-On" H 4700 4325 60  0001 C CNN "MF_Name"
F 6 "LTST-C230KGKT" H 4700 4325 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4700 4325 60  0001 C CNN "S1_Name"
F 8 "160-1456-1-ND" H 4700 4325 60  0001 C CNN "S1_PN"
	1    4700 4325
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:VCC #PWR?
U 1 1 5890E052
P 4700 4075
F 0 "#PWR?" H 4700 3925 50  0001 C CNN
F 1 "VCC" H 4700 4225 50  0000 C CNN
F 2 "" H 4700 4075 50  0000 C CNN
F 3 "" H 4700 4075 50  0000 C CNN
	1    4700 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4075 4700 4225
Wire Wire Line
	4700 4425 4700 4575
$Comp
L crazy_circuits:GND #PWR?
U 1 1 5890E070
P 4700 4575
F 0 "#PWR?" H 4700 4325 50  0001 C CNN
F 1 "GND" H 4700 4425 50  0000 C CNN
F 2 "" H 4700 4575 50  0000 C CNN
F 3 "" H 4700 4575 50  0000 C CNN
	1    4700 4575
	1    0    0    -1  
$EndComp
$EndSCHEMATC
