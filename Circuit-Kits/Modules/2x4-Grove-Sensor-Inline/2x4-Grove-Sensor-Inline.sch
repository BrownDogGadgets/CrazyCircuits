EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x4 Grove Sensor (Inline)"
Date "09 Feb 2018"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L HEADER-MALE-4POS-TH-1x04-SEEED-GROVE J1
U 1 1 5A7DB41E
P 5225 3275
F 0 "J1" H 5175 3475 50  0000 L CNN
F 1 "SEEED GROVE SENSOR" H 5175 2975 50  0000 L CNN
F 2 "Crazy_NonLego:CONN-HEADER-STRAIGHT-TH-1x04-SEEED-GROVE" H 5225 2925 50  0001 C CIN
F 3 "http://wiki.seeedstudio.com/images/6/69/3470130P1.pdf" H 5225 3275 5   0001 C CNN
F 4 "HEADER MALE 4POS TH 1x04 SEEED GROVE" H 5225 2925 50  0001 C CIN "Description"
F 5 "Seeed" H 5225 2925 50  0001 C CIN "MF_Name"
F 6 "110990030" H 5225 2925 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5225 2925 50  0001 C CIN "S1_Name"
F 8 "1597-1082-ND" H 5225 2925 50  0001 C CIN "S1_PN"
	1    5225 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 3175 4400 3175
Wire Wire Line
	5025 3275 4400 3275
Wire Wire Line
	5025 3375 4850 3375
Wire Wire Line
	4850 3375 4850 3025
Wire Wire Line
	5025 3475 4850 3475
Wire Wire Line
	4850 3475 4850 3575
$Comp
L GND #PWR01
U 1 1 5A7DB4D9
P 4850 3575
F 0 "#PWR01" H 4850 3325 50  0001 C CNN
F 1 "GND" H 4850 3425 50  0000 C CNN
F 2 "" H 4850 3575 50  0000 C CNN
F 3 "" H 4850 3575 50  0000 C CNN
	1    4850 3575
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5A7DB4EF
P 4850 3025
F 0 "#PWR02" H 4850 2875 50  0001 C CNN
F 1 "VCC" H 4850 3175 50  0000 C CNN
F 2 "" H 4850 3025 50  0000 C CNN
F 3 "" H 4850 3025 50  0000 C CNN
	1    4850 3025
	1    0    0    -1  
$EndComp
Text Label 4450 3175 0    50   ~ 0
D0
Text Label 4450 3275 0    50   ~ 0
D1
$EndSCHEMATC
