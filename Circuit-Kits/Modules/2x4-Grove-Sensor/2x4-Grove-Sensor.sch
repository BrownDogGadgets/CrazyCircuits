EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x4-Grove-Sensor-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x4 Grove Sensor"
Date "04 Feb 2018"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L HEADER-MALE-4POS-TH-1x04-SEEED-GROVE J1
U 1 1 5A777645
P 5075 3625
F 0 "J1" H 5025 3825 50  0000 L CNN
F 1 "SEEED GROVE SENSOR" H 4875 3325 50  0000 L CNN
F 2 "Crazy_NonLego:CONN-HEADER-STRAIGHT-TH-1x04-SEEED-GROVE" H 5075 3275 50  0001 C CIN
F 3 "http://wiki.seeedstudio.com/images/6/69/3470130P1.pdf" H 5075 3625 10  0001 C CNN
F 4 "HEADER MALE 4POS TH 1x04 SEEED GROVE" H 5075 3275 50  0001 C CIN "Description"
F 5 "Seeed" H 5075 3275 50  0001 C CIN "MF_Name"
F 6 "110990030" H 5075 3275 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5075 3275 50  0001 C CIN "S1_Name"
F 8 "1597-1082-ND" H 5075 3275 50  0001 C CIN "S1_PN"
	1    5075 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 3525 4575 3525
Wire Wire Line
	4875 3625 4575 3625
Wire Wire Line
	4875 3725 4775 3725
Wire Wire Line
	4775 3825 4875 3825
Text Label 4600 3525 0    50   ~ 0
D0
Text Label 4600 3625 0    50   ~ 0
D1
Wire Wire Line
	4775 3725 4775 3350
$Comp
L VCC #PWR01
U 1 1 5A777A2F
P 4775 3350
F 0 "#PWR01" H 4775 3200 50  0001 C CNN
F 1 "VCC" H 4775 3500 50  0000 C CNN
F 2 "" H 4775 3350 50  0000 C CNN
F 3 "" H 4775 3350 50  0000 C CNN
	1    4775 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 3825 4775 3950
$Comp
L GND #PWR02
U 1 1 5A777A4F
P 4775 3950
F 0 "#PWR02" H 4775 3700 50  0001 C CNN
F 1 "GND" H 4775 3800 50  0000 C CNN
F 2 "" H 4775 3950 50  0000 C CNN
F 3 "" H 4775 3950 50  0000 C CNN
	1    4775 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
