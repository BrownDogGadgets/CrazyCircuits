EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 RGB LED 4-pin TH Module"
Date "17 Apr 2019"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:LED-RGB-TH-COM-11120 LED1
U 1 1 5CB75698
P 5250 3850
F 0 "LED1" H 5317 3846 50  0000 L CNN
F 1 "RGB LED" H 5317 3755 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-2.54MM-4PIN-2x3" H 5250 3500 50  0001 C CIN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APTF1616LSEEZGKQBKC.pdf" H 5250 3850 5   0001 C CNN
F 4 "DIFFUSED LED - RGB 10MM" H 5250 3500 50  0001 C CIN "Description"
F 5 "Sparkfun" H 5250 3500 50  0001 C CIN "MF_Name"
F 6 "COM-11120" H 5250 3500 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5250 3500 50  0001 C CIN "S1_Name"
F 8 "1568-1215-ND" H 5250 3500 50  0001 C CIN "S1_PN"
F 9 "th" H 5250 3850 50  0001 C CNN "Type"
	1    5250 3850
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR0101
U 1 1 5CB7578D
P 5100 4200
F 0 "#PWR0101" H 5100 3950 50  0001 C CNN
F 1 "GND" H 5105 4027 50  0000 C CNN
F 2 "" H 5100 4200 50  0000 C CNN
F 3 "" H 5100 4200 50  0000 C CNN
	1    5100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4200 5100 4050
Wire Wire Line
	4950 3750 4950 3625
Wire Wire Line
	4950 3625 4875 3625
Wire Wire Line
	5100 3750 5100 3525
Wire Wire Line
	5100 3525 5000 3525
Wire Wire Line
	5250 3750 5250 3450
Wire Wire Line
	5250 3450 5150 3450
Text Label 5150 3450 0    50   ~ 0
B
Text Label 5000 3525 0    50   ~ 0
G
Text Label 4875 3625 0    50   ~ 0
R
$EndSCHEMATC
