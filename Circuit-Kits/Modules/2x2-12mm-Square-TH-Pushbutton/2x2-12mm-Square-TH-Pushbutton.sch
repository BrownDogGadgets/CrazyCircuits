EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 12mm Square TH Pushbutton Module"
Date "12 Jan 2017"
Rev "v1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L SWITCH-MOMENT-SPDT-TH-B3F-4000 SW1
U 1 1 58786D6C
P 5350 3600
F 0 "SW1" H 5500 3710 50  0000 C CNN
F 1 "SWITCH-MOMENT-SPDT-TH-B3F-4000" H 5320 3400 50  0000 C CNN
F 2 "Crazy_NonLego:SWITCH-OMRON-MOMENTARY-TH-B3F-4000" H 5350 3250 50  0001 C CIN
F 3 "http://www.omron.com/ecb/products/pdf/en-b3f.pdf" H 5350 3600 10  0001 C CNN
F 4 "SWITCH MOMENT SPST-NO 0.05A 24V TH B3F-4000" H 5350 3250 50  0001 C CIN "Description"
F 5 "Omron" H 5350 3250 50  0001 C CIN "MF_Name"
F 6 "B3F-4000" H 5350 3250 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5350 3250 50  0001 C CIN "S1_Name"
F 8 "SW411-ND" H 5350 3250 50  0001 C CIN "S1_PN"
	1    5350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 5050 3600
Wire Wire Line
	4950 3600 4950 3700
Wire Wire Line
	4950 3700 5050 3700
Connection ~ 4950 3600
Wire Wire Line
	5650 3600 5800 3600
Wire Wire Line
	5650 3700 5725 3700
Wire Wire Line
	5725 3700 5725 3600
Connection ~ 5725 3600
Text Label 4850 3600 0    50   ~ 0
1
Text Label 5800 3600 2    50   ~ 0
2
$EndSCHEMATC
