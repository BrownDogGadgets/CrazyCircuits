EESchema Schematic File Version 2
LIBS:crazy_circuits
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
L ADAFRUIT-FEATHER-ESP8266-HUZZAH U1
U 1 1 5A7CBC16
P 4025 3400
F 0 "U1" H 3725 4900 50  0000 L CNN
F 1 "ADAFRUIT-FEATHER-ESP8266-HUZZAH" H 2900 2500 50  0000 L CNN
F 2 "Crazy_Circuits:ADAFRUIT-FEATHER-HUZZAH-ESP8266-6x10" H 4235 3000 50  0001 C CIN
F 3 "https://www.adafruit.com/product/2821" H 4185 3350 5   0001 C CNN
F 4 "ADAFRUIT FEATHER ESP8266 HUZZAH" H 4235 3000 50  0001 C CIN "Description"
F 5 "Adafruit" H 4235 3000 50  0001 C CIN "MF_Name"
F 6 "2821" H 4235 3000 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4235 3000 50  0001 C CIN "S1_Name"
F 8 "1528-1530-ND" H 4235 3000 50  0001 C CIN "S1_PN"
	1    4025 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 2150 4475 2150
Wire Wire Line
	4475 2150 4475 2025
$Comp
L VCC #PWR1
U 1 1 5A7CBCC8
P 4475 2025
F 0 "#PWR1" H 4475 1875 50  0001 C CNN
F 1 "VCC" H 4475 2175 50  0000 C CNN
F 2 "" H 4475 2025 50  0000 C CNN
F 3 "" H 4475 2025 50  0000 C CNN
	1    4475 2025
	1    0    0    -1  
$EndComp
NoConn ~ 4225 2050
NoConn ~ 4225 2250
NoConn ~ 4225 2550
Wire Wire Line
	4225 2450 4600 2450
Text Label 4300 2450 0    50   ~ 0
~RESET
NoConn ~ 4225 2650
Wire Wire Line
	4225 2800 4775 2800
Text Label 4325 2800 0    50   ~ 0
D1_TX
Wire Wire Line
	4225 2900 4775 2900
Text Label 4325 2900 0    50   ~ 0
D3_RX
Wire Wire Line
	4225 3000 4775 3000
Text Label 4325 3000 0    50   ~ 0
D13_MOSI
Wire Wire Line
	4225 3100 4775 3100
Wire Wire Line
	4225 3200 4775 3200
Text Label 4325 3100 0    50   ~ 0
D12_MISO
Text Label 4325 3200 0    50   ~ 0
D14_SCK
Wire Wire Line
	4225 3350 4775 3350
Wire Wire Line
	4225 3450 4775 3450
Wire Wire Line
	4225 3550 4775 3550
Wire Wire Line
	4225 3650 4775 3650
Wire Wire Line
	4225 3750 4775 3750
Wire Wire Line
	4225 3850 4775 3850
Wire Wire Line
	4225 4000 4775 4000
Wire Wire Line
	4225 4150 4650 4150
Wire Wire Line
	4650 4150 4650 4225
$Comp
L GND #PWR2
U 1 1 5A7CBEB6
P 4650 4225
F 0 "#PWR2" H 4650 3975 50  0001 C CNN
F 1 "GND" H 4650 4075 50  0000 C CNN
F 2 "" H 4650 4225 50  0000 C CNN
F 3 "" H 4650 4225 50  0000 C CNN
	1    4650 4225
	1    0    0    -1  
$EndComp
Text Label 4325 3350 0    50   ~ 0
D15
Text Label 4325 3450 0    50   ~ 0
D0
Text Label 4325 3550 0    50   ~ 0
D16
Text Label 4325 3650 0    50   ~ 0
D2
Text Label 4325 3750 0    50   ~ 0
D5_SCL
Text Label 4325 3850 0    50   ~ 0
D4_SDA
Text Label 4325 4000 0    50   ~ 0
A0
$EndSCHEMATC
