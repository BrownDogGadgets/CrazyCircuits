EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:3x3-CR2032-Coin-Cell-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "3x3 CR2032 Coin Cell Battery Module"
Date "19 Dec 2016"
Rev "v1.4"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:Battery BT1
U 1 1 5858515E
P 4825 3700
F 0 "BT1" H 4925 3750 50  0000 L CNN
F 1 "Battery" H 4925 3650 50  0000 L CNN
F 2 "Crazy_Circuits:CR2032-3x3-NO-ROTATE" V 4825 3740 50  0001 C CNN
F 3 "" V 4825 3740 50  0000 C CNN
F 4 "HOLDER BATT COIN CR2032/20MM" H 4825 3700 60  0001 C CNN "Description"
F 5 "MPD" H 4825 3700 60  0001 C CNN "MF_Name"
F 6 "BK-912" H 4825 3700 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4825 3700 60  0001 C CNN "S1_Name"
F 8 "BK-912-ND" H 4825 3700 60  0001 C CNN "S1_PN"
F 9 "smt" H 4825 3700 50  0001 C CNN "Type"
	1    4825 3700
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR01
U 1 1 5858519B
P 4825 3975
F 0 "#PWR01" H 4825 3725 50  0001 C CNN
F 1 "GND" H 4825 3825 50  0000 C CNN
F 2 "" H 4825 3975 50  0000 C CNN
F 3 "" H 4825 3975 50  0000 C CNN
	1    4825 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3975 4825 3850
Wire Wire Line
	4825 3550 4825 3375
$Comp
L crazy_circuits:VCC #PWR02
U 1 1 585851B9
P 4825 3375
F 0 "#PWR02" H 4825 3225 50  0001 C CNN
F 1 "VCC" H 4825 3525 50  0000 C CNN
F 2 "" H 4825 3375 50  0000 C CNN
F 3 "" H 4825 3375 50  0000 C CNN
	1    4825 3375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
