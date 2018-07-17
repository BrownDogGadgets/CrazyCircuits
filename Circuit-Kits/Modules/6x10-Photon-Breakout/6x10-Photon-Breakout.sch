EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "6x10 Photon Breakout Module"
Date "15 Jul 2018"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L PARTICLE-PHOTON-V016 U1
U 1 1 5B4C1D29
P 2850 3375
F 0 "U1" H 2550 4875 50  0000 L CNN
F 1 "PARTICLE-PHOTON-V016" H 2550 1425 50  0000 L CNN
F 2 "Crazy_Circuits:PHOTON-V016-6x10" H 3060 2975 50  0001 C CIN
F 3 "https://www.adafruit.com/product/3406" H 3010 3325 5   0001 C CNN
F 4 "PARTICLE PHOTON V016" H 3060 2975 50  0001 C CIN "Description"
F 5 "Particle" H 3060 2975 50  0001 C CIN "MF_Name"
F 6 "PHOTONH" H 3060 2975 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 3060 2975 50  0001 C CIN "S1_Name"
F 8 "1878-1000-ND" H 3060 2975 50  0001 C CIN "S1_PN"
	1    2850 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2025 3400 2025
Wire Wire Line
	3400 1900 3400 2225
$Comp
L 5V #PWR01
U 1 1 5B4C2204
P 3400 1900
F 0 "#PWR01" H 3400 1750 50  0001 C CNN
F 1 "5V" H 3400 2050 50  0000 C CNN
F 2 "" H 3400 1900 50  0000 C CNN
F 3 "" H 3400 1900 50  0000 C CNN
	1    3400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2125 3600 2125
Wire Wire Line
	3600 2125 3600 1975
$Comp
L 3.3V #PWR02
U 1 1 5B4C222C
P 3600 1975
F 0 "#PWR02" H 3600 1825 50  0001 C CNN
F 1 "3.3V" H 3600 2125 50  0000 C CNN
F 2 "" H 3600 1975 50  0000 C CNN
F 3 "" H 3600 1975 50  0000 C CNN
	1    3600 1975
	1    0    0    -1  
$EndComp
NoConn ~ 3050 2325
NoConn ~ 3050 2425
NoConn ~ 3050 2625
Wire Wire Line
	3050 3425 3225 3425
Text Label 3225 3425 2    50   ~ 0
D0
Wire Wire Line
	3050 3525 3225 3525
Wire Wire Line
	3050 4725 3250 4725
Text Label 3250 4725 2    50   ~ 0
A4
Wire Wire Line
	3050 4825 3250 4825
Text Label 3250 4825 2    50   ~ 0
A5
Text Label 3225 3525 2    50   ~ 0
D1
Wire Wire Line
	3050 5175 3700 5175
Wire Wire Line
	3700 5175 3700 5300
$Comp
L GND #PWR03
U 1 1 5B4C30DD
P 3700 5300
F 0 "#PWR03" H 3700 5050 50  0001 C CNN
F 1 "GND" H 3700 5150 50  0000 C CNN
F 2 "" H 3700 5300 50  0000 C CNN
F 3 "" H 3700 5300 50  0000 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4625 3250 4625
Text Label 3250 4625 2    50   ~ 0
A3
Wire Wire Line
	3050 4525 3250 4525
Text Label 3250 4525 2    50   ~ 0
A2
Wire Wire Line
	3050 4425 3250 4425
Text Label 3250 4425 2    50   ~ 0
A1
Wire Wire Line
	3050 4325 3250 4325
Text Label 3250 4325 2    50   ~ 0
A0
Wire Wire Line
	3050 3625 3225 3625
Wire Wire Line
	3050 3725 3225 3725
Wire Wire Line
	3050 3825 3225 3825
Wire Wire Line
	3050 3975 3225 3975
Wire Wire Line
	3050 4075 3225 4075
Wire Wire Line
	3050 4175 3225 4175
Text Label 3125 3625 0    50   ~ 0
D2
Text Label 3125 3725 0    50   ~ 0
D3
Text Label 3125 3825 0    50   ~ 0
D4
Text Label 3125 3975 0    50   ~ 0
D5
Text Label 3125 4075 0    50   ~ 0
D6
Text Label 3125 4175 0    50   ~ 0
D7
Wire Wire Line
	3050 2725 3250 2725
Text Label 3250 2725 2    50   ~ 0
TX
Wire Wire Line
	3050 2825 3250 2825
Text Label 3250 2825 2    50   ~ 0
RX
Wire Wire Line
	3050 2925 3250 2925
Text Label 3250 2925 2    50   ~ 0
DAC
Wire Wire Line
	3400 2225 3050 2225
Connection ~ 3400 2025
$EndSCHEMATC
