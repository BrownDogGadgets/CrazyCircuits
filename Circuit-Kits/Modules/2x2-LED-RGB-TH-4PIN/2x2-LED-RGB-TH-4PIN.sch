EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:wickerlib
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 RGB LED TH Module"
Date "19 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Text Label 4525 3900 0    50   ~ 0
R
Text Label 4675 3825 0    50   ~ 0
G
Text Label 4825 3900 0    50   ~ 0
B
Wire Wire Line
	4600 3900 4600 3975
Wire Wire Line
	4750 3825 4750 3975
Wire Wire Line
	4750 3825 4675 3825
Wire Wire Line
	4525 3900 4600 3900
Wire Wire Line
	4900 3975 4900 3900
Wire Wire Line
	4900 3900 4825 3900
Wire Wire Line
	4750 4275 4750 4400
$Comp
L GND #PWR?
U 1 1 5880820E
P 4750 4400
F 0 "#PWR?" H 4750 4150 50  0001 C CNN
F 1 "GND" H 4750 4250 50  0000 C CNN
F 2 "" H 4750 4400 50  0000 C CNN
F 3 "" H 4750 4400 50  0000 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L LED-RGB-TH-COM-11120 LED1
U 1 1 588084D3
P 4900 4075
F 0 "LED1" H 4975 4125 50  0000 L CNN
F 1 "LED-RGB-TH-COM-11120" H 4975 4025 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-2.54MM-4PIN-2x2" H 4900 3725 50  0001 C CIN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APTF1616LSEEZGKQBKC.pdf" H 4900 4075 5   0001 C CNN
F 4 "DIFFUSED LED - RGB 10MM" H 4900 3725 50  0001 C CIN "Description"
F 5 "Sparkfun" H 4900 3725 50  0001 C CIN "MF_Name"
F 6 "COM-11120" H 4900 3725 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4900 3725 50  0001 C CIN "S1_Name"
F 8 "1568-1215-ND" H 4900 3725 50  0001 C CIN "S1_PN"
	1    4900 4075
	1    0    0    -1  
$EndComp
$EndSCHEMATC
