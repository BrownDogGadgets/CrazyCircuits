EESchema Schematic File Version 2
LIBS:rewire_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "All Rights Reserved"
Comment1 "help@browndoggadgets.com"
Comment2 "http://www.browndoggadgets.com/"
Comment3 "Company: Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L Battery BT1
U 1 1 5852EDA5
P 4925 3500
F 0 "BT1" H 5025 3550 50  0000 L CNN
F 1 "Battery" H 5025 3450 50  0000 L CNN
F 2 "Rewire_Circuits:CR2032-4x3-NO-ROTATE" V 4925 3540 50  0001 C CNN
F 3 "" V 4925 3540 50  0000 C CNN
	1    4925 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 3350 4925 3300
Wire Wire Line
	4925 3650 4925 3700
$Comp
L GND #PWR01
U 1 1 5852EE00
P 4925 3700
F 0 "#PWR01" H 4925 3450 50  0001 C CNN
F 1 "GND" H 4925 3550 50  0000 C CNN
F 2 "" H 4925 3700 50  0000 C CNN
F 3 "" H 4925 3700 50  0000 C CNN
	1    4925 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5852EE33
P 4925 3300
F 0 "#PWR02" H 4925 3150 50  0001 C CNN
F 1 "VCC" H 4925 3450 50  0000 C CNN
F 2 "" H 4925 3300 50  0000 C CNN
F 3 "" H 4925 3300 50  0000 C CNN
	1    4925 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
