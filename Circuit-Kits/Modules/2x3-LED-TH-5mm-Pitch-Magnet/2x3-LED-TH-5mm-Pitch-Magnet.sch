EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-LED-TH-5mm-Pitch-Magnet-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Magnet-compatible LED Module"
Date "19 Dec 2016"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L LED LED1
U 1 1 58584EA3
P 4950 3550
F 0 "LED1" H 5050 3600 50  0000 L CNN
F 1 "GREEN" H 5050 3500 50  0000 L CNN
F 2 "Crazy_Circuits:LED-10MMD-5MMP-TH-2x3" H 4675 3425 50  0001 C CIN
F 3 "" V 4675 3625 10  0001 C CNN
F 4 "LED GREEN 10MM DIA 2.54MM PITCH TH" H 4675 3625 60  0001 C CNN "Description"
	1    4950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3450 4950 3350
Wire Wire Line
	4950 3650 4950 3775
$Comp
L GND #PWR01
U 1 1 58584EE9
P 4950 3775
F 0 "#PWR01" H 4950 3525 50  0001 C CNN
F 1 "GND" H 4950 3625 50  0000 C CNN
F 2 "" H 4950 3775 50  0000 C CNN
F 3 "" H 4950 3775 50  0000 C CNN
	1    4950 3775
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58584EFF
P 4950 3350
F 0 "#PWR02" H 4950 3200 50  0001 C CNN
F 1 "VCC" H 4950 3500 50  0000 C CNN
F 2 "" H 4950 3350 50  0000 C CNN
F 3 "" H 4950 3350 50  0000 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
