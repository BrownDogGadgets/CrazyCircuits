EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 LED RGB SK6812 Mini SMT Module"
Date "01 Jan 2019"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Text Notes 5225 2975 0    50   ~ 0
Strongly recommended to place \na 100nF capacitor between VCC\nand GND between micro and pixels.
$Comp
L crazy_circuits:CAP-CER-0.1UF-25V-X7R-0603 C1
U 1 1 5C2BF96D
P 5000 3525
F 0 "C1" H 5092 3571 50  0000 L CNN
F 1 "100nF" H 5092 3480 50  0000 L CNN
F 2 "" H 5000 3175 50  0001 C CIN
F 3 "http://search.murata.co.jp/Ceramy/image/img/A01X/partnumbering_e_01.pdf" H 5000 3525 5   0001 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0603" H 5000 3175 50  0001 C CIN "Description"
F 5 "Yageo" H 5000 3175 50  0001 C CIN "MF_Name"
F 6 "CC0603KRX7R8BB104" H 5000 3175 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5000 3175 50  0001 C CIN "S1_Name"
F 8 "311-1341-1-ND" H 5000 3175 50  0001 C CIN "S1_PN"
F 9 "114" H 5000 3175 50  0001 C CIN "XSize_mils"
F 10 "59" H 5000 3175 50  0001 C CIN "YSize_mils"
F 11 "smt" H 5000 3175 50  0001 C CIN "Type"
	1    5000 3525
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:LED-RGB-SK6812MINI-4SMD LED1
U 1 1 5C2BFCD3
P 6225 3475
F 0 "LED1" H 6100 3800 50  0000 C CNN
F 1 "SK6812MINI" H 6225 3725 50  0000 C CNN
F 2 "Crazy_Circuits:LED-RGB-3535-NEOPIXEL-MINI-ROTATED-2x3" H 6225 3125 50  0001 C CIN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 6225 3475 10  0001 C CNN
F 4 "LED RGB SK6812MINI 4SMD" H 6225 3125 50  0001 C CIN "Description"
F 5 "Adafruit" H 6225 3125 50  0001 C CIN "MF_Name"
F 6 "2659" H 6225 3125 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 6225 3125 50  0001 C CIN "S1_Name"
F 8 "1528-1542-ND" H 6225 3125 50  0001 C CIN "S1_PN"
F 9 "smt" H 6275 3759 50  0001 C CNN "Type"
	1    6225 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 3325 5000 3325
Wire Wire Line
	5000 3425 5000 3325
Connection ~ 5000 3325
Wire Wire Line
	5000 3325 4625 3325
Text Label 4625 3325 0    50   ~ 0
VCC
$Comp
L crazy_circuits:GND #PWR0101
U 1 1 5C2BFE36
P 5000 3700
F 0 "#PWR0101" H 5000 3450 50  0001 C CNN
F 1 "GND" H 5005 3527 50  0000 C CNN
F 2 "" H 5000 3700 50  0000 C CNN
F 3 "" H 5000 3700 50  0000 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 5000 3625
$Comp
L crazy_circuits:RES-470-5%-1_4W-0603 R1
U 1 1 5C2C009A
P 5575 3925
F 0 "R1" H 5634 3971 50  0000 L CNN
F 1 "470" H 5634 3880 50  0000 L CNN
F 2 "" H 5575 3575 50  0001 C CIN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/esr.pdf" H 5575 3925 5   0001 C CNN
F 4 "RES SMD 470 OHM 5% 1/4W 0603" H 5575 3575 50  0001 C CIN "Description"
F 5 "Rohm Semi" H 5575 3575 50  0001 C CIN "MF_Name"
F 6 "ESR03EZPJ471" H 5575 3575 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5575 3575 50  0001 C CIN "S1_Name"
F 8 "RHM470DCT-ND" H 5575 3575 50  0001 C CIN "S1_PN"
F 9 "smt" H 5634 3834 50  0001 L CNN "Type"
	1    5575 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 3725 5575 3725
Wire Wire Line
	5575 3725 5575 3825
Wire Wire Line
	5575 4025 5575 4100
Wire Wire Line
	4625 4100 5575 4100
Text Label 4625 4100 0    50   ~ 0
DI
$Comp
L crazy_circuits:GND #PWR0102
U 1 1 5C2C027C
P 6275 4200
F 0 "#PWR0102" H 6275 3950 50  0001 C CNN
F 1 "GND" H 6280 4027 50  0000 C CNN
F 2 "" H 6275 4200 50  0000 C CNN
F 3 "" H 6275 4200 50  0000 C CNN
	1    6275 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 4200 6275 4150
Wire Wire Line
	6275 4150 7325 4150
Connection ~ 6275 4150
Wire Wire Line
	6275 4150 6275 3975
Text Label 7325 4150 2    50   ~ 0
GND
Wire Wire Line
	6775 3725 7300 3725
Text Label 7300 3725 2    50   ~ 0
DO
Text Notes 4825 4600 0    50   ~ 0
Add R1 between \nmicrocontroller\ndata pin and \nNeopixel data input to\nprevent voltage spikes. 
$EndSCHEMATC
