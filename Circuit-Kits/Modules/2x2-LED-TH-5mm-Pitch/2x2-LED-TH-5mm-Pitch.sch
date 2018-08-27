EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Through-hole LED Module"
Date "19 Dec 2016"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:LED LED1
U 1 1 58584A3B
P 4675 3625
F 0 "LED1" H 4750 3675 50  0000 L CNN
F 1 "GREEN" H 4750 3575 50  0000 L CNN
F 2 "Crazy_Circuits:LED-5MM-TH-2x2" H 4675 3425 50  0001 C CIN
F 3 "" V 4675 3625 10  0001 C CNN
F 4 "LED GREEN 10MM DIA 5MM PITCH TH" H 4675 3625 60  0001 C CNN "Description"
	1    4675 3625
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:VCC #PWR01
U 1 1 58584AA3
P 4675 3475
F 0 "#PWR01" H 4675 3325 50  0001 C CNN
F 1 "VCC" H 4675 3625 50  0000 C CNN
F 2 "" H 4675 3475 50  0000 C CNN
F 3 "" H 4675 3475 50  0000 C CNN
	1    4675 3475
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR02
U 1 1 58584AB9
P 4675 3775
F 0 "#PWR02" H 4675 3525 50  0001 C CNN
F 1 "GND" H 4675 3625 50  0000 C CNN
F 2 "" H 4675 3775 50  0000 C CNN
F 3 "" H 4675 3775 50  0000 C CNN
	1    4675 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 3775 4675 3725
Wire Wire Line
	4675 3525 4675 3475
$EndSCHEMATC
