EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-Speaker-SMT-11mm-Pitch-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Speaker 11mm Pitch Module"
Date "17 Mar 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L Speaker SPK1
U 1 1 58CC30BB
P 5100 3675
F 0 "SPK1" H 5250 3725 50  0000 L CNN
F 1 "Speaker" H 5250 3625 50  0000 L CNN
F 2 "Crazy_Circuits:SPEAKER-PIEZO-11MMPitch-PKLCS1212E4001-2x3" V 5100 3715 50  0001 C CNN
F 3 "" V 5100 3715 50  0000 C CNN
F 4 "SPEAKER PIEZO 25V SMD PKLCS1212E4001-R1" H 5100 3675 60  0001 C CNN "Description"
F 5 "Murata" H 5100 3675 60  0001 C CNN "MF_Name"
F 6 "PKLCS1212E4001-R1" H 5100 3675 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 5100 3675 60  0001 C CNN "S1_Name"
F 8 "490-4683-1-ND" H 5100 3675 60  0001 C CNN "S1_PN"
	1    5100 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3525 5100 3450
$Comp
L VCC #PWR01
U 1 1 58CC311B
P 5100 3450
F 0 "#PWR01" H 5100 3300 50  0001 C CNN
F 1 "VCC" H 5100 3600 50  0000 C CNN
F 2 "" H 5100 3450 50  0000 C CNN
F 3 "" H 5100 3450 50  0000 C CNN
	1    5100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3825 5100 3900
$Comp
L GND #PWR02
U 1 1 58CC3136
P 5100 3900
F 0 "#PWR02" H 5100 3650 50  0001 C CNN
F 1 "GND" H 5100 3750 50  0000 C CNN
F 2 "" H 5100 3900 50  0000 C CNN
F 3 "" H 5100 3900 50  0000 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
