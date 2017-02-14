EESchema Schematic File Version 2
LIBS:wickerlib
LIBS:crazy_circuits
LIBS:VibeMotor-Button-Battery-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "VibeMotor-Button-Battery Circuit Kit"
Date "27 Dec 2016"
Rev"v1.2"
Comp "All rights reserved.")
Comment1 "help@browndoggadgets.com")
Comment2 "http://browndoggadgets.com/")
Comment3 "Brown Dog Gadgets")
Comment4 ""
$EndDescr
$Comp
L Battery BT1
U 1 1 586577A5
P 4875 3700
F 0 "BT1" H 4975 3750 50  0000 L CNN
F 1 "Battery" H 4975 3650 50  0000 L CNN
F 2 "" V 4875 3740 50  0000 C CNN
F 3 "" V 4875 3740 50  0000 C CNN
F 4 "HOLDER BATT COIN CR2032/20MM" H 5600 3300 60  0001 C CNN "Description"
F 5 "Harwin" H 5600 3300 60  0001 C CNN "MF_Name"
F 6 "S8211-46R" H 5600 3300 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 5600 3300 60  0001 C CNN "S1_Name"
F 8 "952-1735-1-ND" H 5600 3300 60  0001 C CNN "S1_PN"
	1    4875 3700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 586577D4
P 5275 3400
F 0 "SW1" H 5425 3510 50  0000 C CNN
F 1 "SW_PUSH" H 5275 3320 50  0000 C CNN
F 2 "" H 5275 3400 50  0000 C CNN
F 3 "" H 5275 3400 50  0000 C CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 24V" H 6175 3050 60  0001 C CNN "Description"
F 5 "Omron" H 6175 3050 60  0001 C CNN "MF_Name"
F 6 "B3F-1000" H 6175 3050 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 6175 3050 60  0001 C CNN "S1_Name"
F 8 "SW400-ND" H 6175 3050 60  0001 C CNN "S1_PN"
	1    5275 3400
	1    0    0    -1  
$EndComp
$Comp
L MOTOR M1
U 1 1 58657A10
P 5675 3700
F 0 "M1" H 5760 3735 50  0000 L CNN
F 1 "MOTOR" H 5760 3665 50  0000 L CNN
F 2 "" H 5675 3700 50  0000 C CNN
F 3 "" H 5675 3700 50  0000 C CNN
F 4 "MOTOR VIBE PCB 6MM - 10MM TYPE" H 6175 3050 60  0001 C CNN "Description"
F 5 "Precision Microdrives" H 6175 3050 60  0001 C CNN "MF_Name"
F 6 "306-114" H 6175 3050 60  0001 C CNN "MF_PN"
F 7 "Precision Microdrives" H 6175 3050 60  0001 C CNN "S1_Name"
F 8 "306-114" H 6175 3050 60  0001 C CNN "S1_PN"
	1    5675 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 3550 4875 3400
Wire Wire Line
	4875 3400 4975 3400
Wire Wire Line
	5575 3400 5675 3400
Wire Wire Line
	5675 3400 5675 3550
Wire Wire Line
	4875 3850 4875 3950
Wire Wire Line
	4875 3950 5675 3950
Wire Wire Line
	5675 3950 5675 3850
$EndSCHEMATC
