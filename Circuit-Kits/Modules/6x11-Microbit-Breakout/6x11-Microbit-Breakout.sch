EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:6x11-Microbit-Breakout-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "6x11 Microbit Breakout Module"
Date "09 Feb 2018"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L HEADER-MALE-80POS-TH-4x20-MICROBIT J1
U 1 1 5A7DC938
P 5050 3375
F 0 "J1" H 5025 4775 50  0000 L CNN
F 1 "MICROBIT BREAKOUT" H 5000 2325 50  0000 L CNN
F 2 "Crazy_Circuits:MICROBIT-6x11" H 5050 3025 50  0001 C CIN
F 3 "https://cdn-shop.adafruit.com/product-files/3342/Micro-Bit_connector_datasheet.pdf" H 5050 3375 5   0001 C CNN
F 4 "HEADER MALE 80POS TH 4x20 MICROBIT R/A" H 5050 3025 50  0001 C CIN "Description"
F 5 "Adafruit" H 5050 3025 50  0001 C CIN "MF_Name"
F 6 "3342" H 5050 3025 50  0001 C CIN "MF_PN"
F 7 "Adafruit" H 5050 3025 50  0001 C CIN "S1_Name"
F 8 "3342" H 5050 3025 50  0001 C CIN "S1_PN"
	1    5050 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2125 4750 2125
Wire Wire Line
	4750 2125 4750 2050
$Comp
L VCC #PWR01
U 1 1 5A7DD5DB
P 4750 2050
F 0 "#PWR01" H 4750 1900 50  0001 C CNN
F 1 "VCC" H 4750 2200 50  0000 C CNN
F 2 "" H 4750 2050 50  0000 C CNN
F 3 "" H 4750 2050 50  0000 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2325 4600 2325
Wire Wire Line
	4600 2425 4850 2425
Wire Wire Line
	4850 2525 4600 2525
Wire Wire Line
	4600 2625 4850 2625
Wire Wire Line
	4850 2725 4600 2725
Wire Wire Line
	4850 2825 4600 2825
Wire Wire Line
	4850 2925 4600 2925
Wire Wire Line
	4600 3025 4850 3025
Wire Wire Line
	4600 3125 4850 3125
Wire Wire Line
	4600 3225 4850 3225
Wire Wire Line
	4600 3325 4850 3325
Wire Wire Line
	4600 3425 4850 3425
Wire Wire Line
	4600 3825 4850 3825
Wire Wire Line
	4600 3525 4850 3525
Wire Wire Line
	4600 3625 4850 3625
Wire Wire Line
	4850 3725 4600 3725
Wire Wire Line
	4600 3925 4850 3925
Wire Wire Line
	4600 4025 4850 4025
Wire Wire Line
	4600 4125 4850 4125
Wire Wire Line
	4600 4225 4850 4225
Wire Wire Line
	4850 4325 4725 4325
Wire Wire Line
	4725 4325 4725 4450
$Comp
L GND #PWR02
U 1 1 5A7DD787
P 4725 4450
F 0 "#PWR02" H 4725 4200 50  0001 C CNN
F 1 "GND" H 4725 4300 50  0000 C CNN
F 2 "" H 4725 4450 50  0000 C CNN
F 3 "" H 4725 4450 50  0000 C CNN
	1    4725 4450
	1    0    0    -1  
$EndComp
Text Label 4725 2325 0    50   ~ 0
1
Text Label 4725 2425 0    50   ~ 0
2
Text Label 4725 2525 0    50   ~ 0
3
Text Label 4725 2625 0    50   ~ 0
4
Text Label 4725 2725 0    50   ~ 0
5
Text Label 4725 2825 0    50   ~ 0
6
Text Label 4725 2925 0    50   ~ 0
7
Text Label 4725 3025 0    50   ~ 0
8
Text Label 4725 3125 0    50   ~ 0
9
Text Label 4725 3225 0    50   ~ 0
10
Text Label 4725 3325 0    50   ~ 0
11
Text Label 4725 3425 0    50   ~ 0
12
Text Label 4725 3525 0    50   ~ 0
13
Text Label 4725 3625 0    50   ~ 0
14
Text Label 4725 3725 0    50   ~ 0
15
Text Label 4725 3925 0    50   ~ 0
17
Text Label 4725 3825 0    50   ~ 0
16
Text Label 4725 4025 0    50   ~ 0
18
Text Label 4725 4125 0    50   ~ 0
19
Text Label 4725 4225 0    50   ~ 0
20
Wire Wire Line
	4850 2225 4600 2225
Text Label 4725 2225 0    50   ~ 0
0
$EndSCHEMATC
