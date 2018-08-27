EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:wickerlib
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Potentiometer (P160K) Module"
Date "18 Jan 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:TRIMPOT-10K-3PIN-TH-0.20W-P160KN R1
U 1 1 588076C6
P 5075 3150
F 0 "R1" H 4975 3200 50  0000 R CNN
F 1 "TRIMPOT-10K-3PIN-TH-0.20W-P160KN" H 4975 3100 50  0000 R CNN
F 2 "Crazy_Circuits:POTENTIOMETER-P160K-2x3" H 5075 2800 50  0001 C CIN
F 3 "http://www.bitechnologies.com/pdfs/p160.pdf" V 5075 3150 5   0001 C CNN
F 4 "POT 10K OHM 1/5W PLASTIC LINEAR" H 5075 2800 50  0001 C CIN "Description"
F 5 "TT Electronics" H 5075 2800 50  0001 C CIN "MF_Name"
F 6 "P160KN-0QC15B10K" H 5075 2800 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5075 2800 50  0001 C CIN "S1_Name"
F 8 "987-1301-ND" H 5075 2800 50  0001 C CIN "S1_PN"
	1    5075 3150
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:VCC #PWR?
U 1 1 5B8495C8
P 5075 2900
F 0 "#PWR?" H 5075 2750 50  0001 C CNN
F 1 "VCC" H 5092 3073 50  0000 C CNN
F 2 "" H 5075 2900 50  0000 C CNN
F 3 "" H 5075 2900 50  0000 C CNN
	1    5075 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 2900 5075 3000
Wire Wire Line
	5075 3300 5075 3450
$Comp
L crazy_circuits:GND #PWR?
U 1 1 5B849636
P 5075 3450
F 0 "#PWR?" H 5075 3200 50  0001 C CNN
F 1 "GND" H 5080 3277 50  0000 C CNN
F 2 "" H 5075 3450 50  0000 C CNN
F 3 "" H 5075 3450 50  0000 C CNN
	1    5075 3450
	1    0    0    -1  
$EndComp
Text Label 5350 3150 0    50   ~ 0
OUTPUT
Wire Wire Line
	5225 3150 5625 3150
$EndSCHEMATC
