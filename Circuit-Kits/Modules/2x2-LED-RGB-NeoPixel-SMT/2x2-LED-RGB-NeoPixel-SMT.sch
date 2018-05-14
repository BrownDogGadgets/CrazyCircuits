EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 LED RGB Neopixel Module"
Date "14 May 2018"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4200 3775 5050 3775
Wire Wire Line
	6050 4175 6400 4175
Wire Wire Line
	5550 4425 5550 4700
Text Label 4600 3775 0    60   ~ 0
VCC
Text Label 4575 4525 0    60   ~ 0
DI
Text Label 6125 4175 0    60   ~ 0
DO
Text Label 6125 4625 0    60   ~ 0
GND
Wire Wire Line
	5550 4625 6400 4625
Connection ~ 5550 4625
$Comp
L GND #PWR01
U 1 1 57C8B8D5
P 5550 4700
F 0 "#PWR01" H 5550 4450 50  0001 C CNN
F 1 "GND" H 5550 4550 50  0000 C CNN
F 2 "" H 5550 4700 50  0000 C CNN
F 3 "" H 5550 4700 50  0000 C CNN
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L RES-470-5%-1/4W-0603 R1
U 1 1 57C8BA02
P 4825 4350
F 0 "R1" H 4875 4400 50  0000 L CNN
F 1 "470" H 4875 4300 50  0000 L CNN
F 2 "" H 4825 4000 50  0001 C CIN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/esr.pdf" H 4825 4350 5   0001 C CNN
F 4 "0603" H 4825 4000 50  0001 C CIN "Package"
F 5 "Rohm Semi" H 4825 4000 50  0001 C CIN "MF_Name"
F 6 "ESR03EZPJ471" H 4825 4000 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4825 4000 50  0001 C CIN "S1_Name"
F 8 "RHM470DCT-ND" H 4825 4000 50  0001 C CIN "S1_PN"
F 9 "RES SMD 470 OHM 5% 1/4W 0603" H 4825 4000 50  0001 C CIN "Description"
F 10 "Not Verified" H 4825 4000 50  0001 C CIN "Verified"
	1    4825 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4175 4825 4175
Text Notes 4025 5100 0    60   ~ 0
Add R1 between \nmicrocontroller\ndata pin and \nNeopixel data input to\nprevent voltage spikes. 
Text Notes 4275 3375 0    60   ~ 0
Strongly recommended to place \na 100nF capacitor between VCC\nand GND between micro and pixels.
$Comp
L LED-RGB-WS2812B-4SMD LED1
U 1 1 57C8DCCA
P 5500 3925
F 0 "LED1" H 5250 4275 50  0000 L CNN
F 1 "WS2812B" H 5250 4175 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-5050-NEOPIXEL-ROTATED-2x2" H 5500 3575 50  0001 C CIN
F 3 "http://www.adafruit.com/datasheets/WS2812B.pdf" H 5500 3925 5   0001 C CNN
F 4 "RGBLED5050" H 5500 3575 50  0001 C CIN "Package"
F 5 "Adafruit" H 5500 3575 50  0001 C CIN "MF_Name"
F 6 "1655" H 5500 3575 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5500 3575 50  0001 C CIN "S1_Name"
F 8 "1528-1104-ND" H 5500 3575 50  0001 C CIN "S1_PN"
F 9 "LED RGB WS2812B W/DVR 4SMD" H 5500 3575 50  0001 C CIN "Description"
F 10 "Not Verified" H 5500 3575 50  0001 C CIN "Verified"
	1    5500 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 4175 4825 4250
Wire Wire Line
	4825 4450 4825 4525
Wire Wire Line
	4825 4525 4475 4525
Wire Wire Line
	4325 3875 4325 3775
Connection ~ 4325 3775
$Comp
L GND #PWR02
U 1 1 5961C601
P 4325 4125
F 0 "#PWR02" H 4325 3875 50  0001 C CNN
F 1 "GND" H 4325 3975 50  0000 C CNN
F 2 "" H 4325 4125 50  0000 C CNN
F 3 "" H 4325 4125 50  0000 C CNN
	1    4325 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 4125 4325 4075
$Comp
L CAP-CER-0.1UF-100V-X7R-0603 C1
U 1 1 5AF9B133
P 4325 3975
F 0 "C1" H 4425 4025 50  0000 L CNN
F 1 "100nF" H 4425 3925 50  0000 L CNN
F 2 "" H 4325 3625 50  0001 C CIN
F 3 "http://search.murata.co.jp/Ceramy/image/img/A01X/partnumbering_e_01.pdf" H 4325 3975 5   0001 C CNN
F 4 "CAP CER 0.1UF 100V X7R 0603" H 4325 3625 50  0001 C CIN "Description"
F 5 "Murata" H 4325 3625 50  0001 C CIN "MF_Name"
F 6 "GRM188R72A104KA35D" H 4325 3625 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4325 3625 50  0001 C CIN "S1_Name"
F 8 "490-3285-1-ND" H 4325 3625 50  0001 C CIN "S1_PN"
	1    4325 3975
	1    0    0    -1  
$EndComp
$EndSCHEMATC
