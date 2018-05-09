EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:6x10-Feather-Bluefruit-LE-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "6x10 Feather Huzzah ESP8266 Board"
Date "05 Feb 2018"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L ADAFRUIT-FEATHER-BLUEFRUIT-LE U1
U 1 1 5A7C752E
P 4175 3475
F 0 "U1" H 3875 4975 50  0000 L CNN
F 1 "ADAFRUIT-FEATHER-BLUEFRUIT-LE" H 3075 1525 50  0000 L CNN
F 2 "Crazy_Circuits:ADAFRUIT-FEATHER-BLUEFRUIT-LE-6x10" H 4335 3075 50  0001 C CIN
F 3 "https://www.adafruit.com/product/3406" H 4335 3425 5   0001 C CNN
F 4 "ADAFRUIT FEATHER BLUEFRUIT LE" H 4335 3075 50  0001 C CIN "Description"
F 5 "Adafruit" H 4335 3075 50  0001 C CIN "MF_Name"
F 6 "3406" H 4335 3075 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4335 3075 50  0001 C CIN "S1_Name"
F 8 "1528-2095-ND" H 4335 3075 50  0001 C CIN "S1_PN"
	1    4175 3475
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5A7C75BB
P 4625 1975
F 0 "#PWR01" H 4625 1825 50  0001 C CNN
F 1 "VCC" H 4625 2125 50  0000 C CNN
F 2 "" H 4625 1975 50  0000 C CNN
F 3 "" H 4625 1975 50  0000 C CNN
	1    4625 1975
	1    0    0    -1  
$EndComp
NoConn ~ 4375 2625
NoConn ~ 4375 2425
NoConn ~ 4375 2125
$Comp
L GND #PWR02
U 1 1 5A7C898D
P 4600 5350
F 0 "#PWR02" H 4600 5100 50  0001 C CNN
F 1 "GND" H 4600 5200 50  0000 C CNN
F 2 "" H 4600 5350 50  0000 C CNN
F 3 "" H 4600 5350 50  0000 C CNN
	1    4600 5350
	1    0    0    -1  
$EndComp
Text Label 4475 2875 0    50   ~ 0
D6_TX
Text Label 4475 2975 0    50   ~ 0
D8_RX
Text Label 4475 3075 0    50   ~ 0
D13_MOSI
Text Label 4475 3175 0    50   ~ 0
D14_MISO
Text Label 4475 3275 0    50   ~ 0
D12_SCK
Text Label 4475 3425 0    50   ~ 0
D16
Text Label 4475 3525 0    50   ~ 0
D15
Text Label 4475 3625 0    50   ~ 0
D7
Text Label 4475 3725 0    50   ~ 0
D11
Text Label 4475 4075 0    50   ~ 0
D27
Text Label 4475 4175 0    50   ~ 0
D26
Text Label 4475 4275 0    50   ~ 0
D25
Text Label 4475 4425 0    50   ~ 0
A0
Text Label 4475 4525 0    50   ~ 0
A1
Text Label 4475 4625 0    50   ~ 0
A2
Text Label 4475 4725 0    50   ~ 0
A3
Text Label 4475 4825 0    50   ~ 0
A4
Text Label 4475 4925 0    50   ~ 0
A5
Text Label 4475 5025 0    50   ~ 0
D26_SCL
Text Label 4475 5125 0    50   ~ 0
D25_SDA
Wire Wire Line
	4375 2525 4875 2525
Wire Wire Line
	4375 2725 4875 2725
Wire Wire Line
	4625 2325 4375 2325
Wire Wire Line
	4375 2225 4625 2225
Wire Wire Line
	4375 5125 4875 5125
Wire Wire Line
	4375 5025 4875 5025
Wire Wire Line
	4375 4275 4875 4275
Wire Wire Line
	4375 4175 4875 4175
Wire Wire Line
	4375 4925 4875 4925
Wire Wire Line
	4375 4825 4875 4825
Wire Wire Line
	4375 4725 4875 4725
Wire Wire Line
	4375 4625 4875 4625
Wire Wire Line
	4375 4525 4875 4525
Wire Wire Line
	4375 4425 4875 4425
Wire Wire Line
	4375 4075 4875 4075
Wire Wire Line
	4375 3725 4875 3725
Wire Wire Line
	4375 3625 4875 3625
Wire Wire Line
	4375 3525 4875 3525
Wire Wire Line
	4375 3425 4875 3425
Wire Wire Line
	4375 3275 4875 3275
Wire Wire Line
	4375 3175 4875 3175
Wire Wire Line
	4375 3075 4875 3075
Wire Wire Line
	4375 2975 4875 2975
Wire Wire Line
	4375 2875 4875 2875
Connection ~ 4625 2225
Wire Wire Line
	4625 1975 4625 2325
Text Label 4475 2525 0    50   ~ 0
~RST
Text Label 4475 2725 0    50   ~ 0
D20_DFU
Wire Wire Line
	4600 5275 4600 5350
Wire Wire Line
	4600 5275 4375 5275
NoConn ~ 4375 3825
NoConn ~ 4375 3925
$EndSCHEMATC
