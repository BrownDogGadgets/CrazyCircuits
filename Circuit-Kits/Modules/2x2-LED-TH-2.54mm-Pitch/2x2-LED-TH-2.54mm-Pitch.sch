EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Through-hole LED (2.54mm Pitch) Module"
Date "13 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L LED LED1
U 1 1 5878F5DA
P 4925 3750
F 0 "LED1" H 5000 3800 50  0000 L CNN
F 1 "LED" H 5000 3700 50  0000 L CNN
F 2 "Crazy_Circuits:LED-5MMD-2.5MMP-2x2" H 4925 3550 50  0001 C CIN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/WP813GD.pdf" V 4925 3750 10  0001 C CNN
F 4 "LED GREEN 10MM DIA 2.54MM PITCH" H 4925 3750 60  0001 C CNN "Description"
F 5 "Kingbright" H 4925 3750 60  0001 C CNN "MF_Name"
F 6 "WP813GD" H 4925 3750 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4925 3750 60  0001 C CNN "S1_Name"
F 8 "754-1898-ND" H 4925 3750 60  0001 C CNN "S1_PN"
	1    4925 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5878F67F
P 4925 3525
F 0 "#PWR?" H 4925 3375 50  0001 C CNN
F 1 "VCC" H 4925 3675 50  0000 C CNN
F 2 "" H 4925 3525 50  0000 C CNN
F 3 "" H 4925 3525 50  0000 C CNN
	1    4925 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 3525 4925 3650
$Comp
L GND #PWR?
U 1 1 5878F698
P 4925 3925
F 0 "#PWR?" H 4925 3675 50  0001 C CNN
F 1 "GND" H 4925 3775 50  0000 C CNN
F 2 "" H 4925 3925 50  0000 C CNN
F 3 "" H 4925 3925 50  0000 C CNN
	1    4925 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 3925 4925 3850
$EndSCHEMATC
