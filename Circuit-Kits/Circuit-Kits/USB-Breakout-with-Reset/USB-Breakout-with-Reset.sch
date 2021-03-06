EESchema Schematic File Version 2
LIBS:wickerlib
LIBS:rewire_circuits
LIBS:USB-Breakout-with-Reset-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "All Rights Reserved"
Comment1 "help@browndoggadgets.com"
Comment2 "http://www.browndoggadgets.com/"
Comment3 "Company: Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L CONN-USB-MICRO-B-10118193 J1
U 1 1 58331EEE
P 2275 3400
F 0 "J1" H 2125 3750 50  0000 L CNN
F 1 "USB-MICRO" H 2125 3050 50  0000 L CNN
F 2 "Rewire_NonLego:CONN-USB-MICRO-B-AMPHENOL-10118193-0001LF" H 2275 3050 50  0001 C CIN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10118193.pdf" V 1750 3425 5   0001 C CNN
F 4 "USB_Micro-B_10118193_0001LF" H 2275 3050 50  0001 C CIN "Package"
F 5 "Amphenol" H 2275 3050 50  0001 C CIN "MF_Name"
F 6 "10118193-0001LF" H 2275 3050 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 2275 3050 50  0001 C CIN "S1_Name"
F 8 "609-4616-1-ND" H 2275 3050 50  0001 C CIN "S1_PN"
F 9 "USB MICRO-B RECEPTACLE 5PIN SMT R/A STUDS" H 2275 3050 50  0001 C CIN "Description"
F 10 "Not Verified" H 2275 3050 50  0001 C CIN "Verified"
	1    2275 3400
	1    0    0    -1  
$EndComp
$Comp
L DIODE-ZENER-3.6V-1W-BZX85C3V6-DO41 D1
U 1 1 58331F64
P 3150 4075
F 0 "D1" H 3250 4125 50  0000 L CNN
F 1 "3.6V" H 3250 4025 50  0000 L CNN
F 2 "Rewire_NonLego:DIODE-DO-41" H 3150 3725 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/datasheets/BZ/BZX85C10.pdf" V 3150 4075 5   0001 C CNN
F 4 "Diode_DO-41" H 3150 3725 50  0001 C CIN "Package"
F 5 "Fairchild" H 3150 3725 50  0001 C CIN "MF_Name"
F 6 "BZX85C3V6" H 3150 3725 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 3150 3725 50  0001 C CIN "S1_Name"
F 8 "BZX85C3V6-ND" H 3150 3725 50  0001 C CIN "S1_PN"
F 9 "DIODE ZENER 3.6V 1W BZX85C3V6 DO41" H 3150 3725 50  0001 C CIN "Description"
F 10 "Not Verified" H 3150 3725 50  0001 C CIN "Verified"
	1    3150 4075
	1    0    0    -1  
$EndComp
$Comp
L DIODE-ZENER-3.6V-1W-BZX85C3V6-DO41 D2
U 1 1 58331FE7
P 3550 4075
F 0 "D2" H 3650 4125 50  0000 L CNN
F 1 "3.6V" H 3650 4025 50  0000 L CNN
F 2 "Rewire_NonLego:DIODE-DO-41" H 3550 3725 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/datasheets/BZ/BZX85C10.pdf" V 3550 4075 5   0001 C CNN
F 4 "Diode_DO-41" H 3550 3725 50  0001 C CIN "Package"
F 5 "Fairchild" H 3550 3725 50  0001 C CIN "MF_Name"
F 6 "BZX85C3V6" H 3550 3725 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 3550 3725 50  0001 C CIN "S1_Name"
F 8 "BZX85C3V6-ND" H 3550 3725 50  0001 C CIN "S1_PN"
F 9 "DIODE ZENER 3.6V 1W BZX85C3V6 DO41" H 3550 3725 50  0001 C CIN "Description"
F 10 "Not Verified" H 3550 3725 50  0001 C CIN "Verified"
	1    3550 4075
	1    0    0    -1  
$EndComp
Text Notes 3150 4800 0    50   ~ 0
Zener Diodes\nFairchild\nBZX85C3V6
Text Notes 2125 4000 0    50   ~ 0
Amphenol\n10118193
$Comp
L GND #PWR01
U 1 1 5833208F
P 3150 4275
F 0 "#PWR01" H 3150 4025 50  0001 C CNN
F 1 "GND" H 3150 4125 50  0000 C CNN
F 2 "" H 3150 4275 50  0000 C CNN
F 3 "" H 3150 4275 50  0000 C CNN
	1    3150 4275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 583320AA
P 3550 4275
F 0 "#PWR02" H 3550 4025 50  0001 C CNN
F 1 "GND" H 3550 4125 50  0000 C CNN
F 2 "" H 3550 4275 50  0000 C CNN
F 3 "" H 3550 4275 50  0000 C CNN
	1    3550 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 3300 3850 3300
Wire Wire Line
	2625 3400 4125 3400
$Comp
L RES-66.5-1%-1/4W-TH R2
U 1 1 5833C9E5
P 3950 3300
F 0 "R2" V 3800 3250 50  0000 L CNN
F 1 "66.5" V 3875 3225 40  0000 L CNN
F 2 "Rewire_NonLego:RES-CARBONFILM-7MM" H 3950 2950 50  0001 C CIN
F 3 "http://industrial.panasonic.com/www-cgi/jvcr13pz.cgi?E+PZ+3+AOA0001+ERJ6GEYJ152V+7+WW" H 3950 3300 5   0001 C CNN
F 4 "Yageo" H 3950 2950 50  0001 C CIN "MF_Name"
F 5 "MFR-25FBF52-66R5" H 3950 2950 50  0001 C CIN "MF_PN"
F 6 "Digikey" H 3950 2950 50  0001 C CIN "S1_Name"
F 7 "66.5XBK-ND" H 3950 2950 50  0001 C CIN "S1_PN"
F 8 "RES 66.5 OHM 1/4W 1% AXIAL" H 3950 2950 50  0001 C CIN "Description"
F 9 "Not Verified" H 3950 2950 50  0001 C CIN "Verified"
	1    3950 3300
	0    1    1    0   
$EndComp
$Comp
L RES-66.5-1%-1/4W-TH R3
U 1 1 5833CBCE
P 4225 3400
F 0 "R3" V 4300 3375 50  0000 L CNN
F 1 "66.5" V 4375 3350 40  0000 L CNN
F 2 "Rewire_NonLego:RES-CARBONFILM-7MM" H 4225 3050 50  0001 C CIN
F 3 "http://industrial.panasonic.com/www-cgi/jvcr13pz.cgi?E+PZ+3+AOA0001+ERJ6GEYJ152V+7+WW" H 4225 3400 5   0001 C CNN
F 4 "Yageo" H 4225 3050 50  0001 C CIN "MF_Name"
F 5 "MFR-25FBF52-66R5" H 4225 3050 50  0001 C CIN "MF_PN"
F 6 "Digikey" H 4225 3050 50  0001 C CIN "S1_Name"
F 7 "66.5XBK-ND" H 4225 3050 50  0001 C CIN "S1_PN"
F 8 "RES 66.5 OHM 1/4W 1% AXIAL" H 4225 3050 50  0001 C CIN "Description"
F 9 "Not Verified" H 4225 3050 50  0001 C CIN "Verified"
	1    4225 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4325 3400 5050 3400
Wire Wire Line
	3150 3875 3150 3300
Connection ~ 3150 3300
Wire Wire Line
	3550 3875 3550 3400
Connection ~ 3550 3400
Wire Wire Line
	4050 3300 5050 3300
$Comp
L RES-1.5K-5%-1/2W-TH R1
U 1 1 5833CD1D
P 3400 2950
F 0 "R1" H 3475 3000 50  0000 L CNN
F 1 "1.5K" H 3475 2900 50  0000 L CNN
F 2 "Rewire_NonLego:RES-CARBONFILM-7MM" H 3400 2600 50  0001 C CIN
F 3 "http://industrial.panasonic.com/www-cgi/jvcr13pz.cgi?E+PZ+3+AOA0001+ERJ6GEYJ152V+7+WW" H 3400 2950 5   0001 C CNN
F 4 "Stackpole" H 3400 2600 50  0001 C CIN "MF_Name"
F 5 "CFM12JT1K50" H 3400 2600 50  0001 C CIN "MF_PN"
F 6 "Digikey" H 3400 2600 50  0001 C CIN "S1_Name"
F 7 "S1.5KHCT-ND" H 3400 2600 50  0001 C CIN "S1_PN"
F 8 "RES 1.5K OHM 1/2W 5% CF MINI" H 3400 2600 50  0001 C CIN "Description"
F 9 "Not Verified" H 3400 2600 50  0001 C CIN "Verified"
	1    3400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3050 3400 3300
Connection ~ 3400 3300
Wire Wire Line
	3400 2800 3400 2850
NoConn ~ 2625 3500
$Comp
L GND #PWR03
U 1 1 5833CE85
P 2700 3850
F 0 "#PWR03" H 2700 3600 50  0001 C CNN
F 1 "GND" H 2700 3700 50  0000 C CNN
F 2 "" H 2700 3850 50  0000 C CNN
F 3 "" H 2700 3850 50  0000 C CNN
	1    2700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 3600 2700 3600
Wire Wire Line
	2700 3600 2700 3850
Wire Wire Line
	2625 3200 2825 3200
Wire Wire Line
	2700 3200 2700 3100
Wire Wire Line
	5050 3500 4600 3500
Wire Wire Line
	4600 3500 4600 4275
Text Label 4650 3500 0    50   ~ 0
RESET
Text Label 4650 3300 0    50   ~ 0
DM
Text Label 4650 3400 0    50   ~ 0
DP
Wire Wire Line
	5050 3200 4925 3200
Wire Wire Line
	4925 3200 4925 3075
$Comp
L SWITCH-TACT-SPDT-B3F-1000 SW1
U 1 1 5833D15A
P 5000 4175
F 0 "SW1" H 5000 4350 50  0000 C CNN
F 1 "RESET" H 5000 3975 50  0000 C CNN
F 2 "Rewire_NonLego:SWITCH-OMRON-MOMENTARY-TH-B3F-10XX" H 5000 3825 50  0001 C CIN
F 3 "http://www.omron.com/ecb/products/pdf/en-b3f.pdf" H 5000 4175 5   0001 C CNN
F 4 "SW-B3F-10XX" H 5000 3825 50  0001 C CIN "Package"
F 5 "Omron" H 5000 3825 50  0001 C CIN "MF_Name"
F 6 "B3F-1000" H 5000 3825 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 5000 3825 50  0001 C CIN "S1_Name"
F 8 "SW400-ND" H 5000 3825 50  0001 C CIN "S1_PN"
F 9 " SWITCH TACTILE SPST-NO 0.05A 24V " H 5000 3825 50  0001 C CIN "Description"
F 10 "Not Verified" H 5000 3825 50  0001 C CIN "Verified"
	1    5000 4175
	1    0    0    -1  
$EndComp
Text Notes 4725 4625 0    50   ~ 0
Pressbutton\nB3F-1000
Wire Wire Line
	4600 4175 4700 4175
$Comp
L GND #PWR04
U 1 1 5833D2C4
P 5425 4400
F 0 "#PWR04" H 5425 4150 50  0001 C CNN
F 1 "GND" H 5425 4250 50  0000 C CNN
F 2 "" H 5425 4400 50  0000 C CNN
F 3 "" H 5425 4400 50  0000 C CNN
	1    5425 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4275 5425 4275
Wire Wire Line
	5425 4175 5425 4400
Wire Wire Line
	5300 4175 5425 4175
Connection ~ 5425 4275
Wire Wire Line
	4600 4275 4700 4275
Connection ~ 4600 4175
$Comp
L GND #PWR05
U 1 1 5833D474
P 4925 3625
F 0 "#PWR05" H 4925 3375 50  0001 C CNN
F 1 "GND" H 4925 3475 50  0000 C CNN
F 2 "" H 4925 3625 50  0000 C CNN
F 3 "" H 4925 3625 50  0000 C CNN
	1    4925 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3600 4925 3600
Wire Wire Line
	4925 3600 4925 3625
$Comp
L VUSB #PWR06
U 1 1 5833D70B
P 2700 3100
F 0 "#PWR06" H 2700 2950 50  0001 C CNN
F 1 "VUSB" H 2700 3240 50  0000 C CNN
F 2 "" H 2700 3100 50  0000 C CNN
F 3 "" H 2700 3100 50  0000 C CNN
	1    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L VUSB #PWR07
U 1 1 5833D772
P 3400 2800
F 0 "#PWR07" H 3400 2650 50  0001 C CNN
F 1 "VUSB" H 3400 2940 50  0000 C CNN
F 2 "" H 3400 2800 50  0000 C CNN
F 3 "" H 3400 2800 50  0000 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
$Comp
L VUSB #PWR08
U 1 1 5833D795
P 4925 3075
F 0 "#PWR08" H 4925 2925 50  0001 C CNN
F 1 "VUSB" H 4925 3215 50  0000 C CNN
F 2 "" H 4925 3075 50  0000 C CNN
F 3 "" H 4925 3075 50  0000 C CNN
	1    4925 3075
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 5833325D
P 5050 3200
F 0 "W1" V 5050 3425 50  0000 C CNN
F 1 "TEST_1P" H 5050 3400 50  0001 C CNN
F 2 "Rewire_Circuits:STANDALONE-LEGO-HOLE-PLATED" H 5250 3200 50  0001 C CNN
F 3 "" H 5250 3200 50  0000 C CNN
	1    5050 3200
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W2
U 1 1 58333319
P 5050 3300
F 0 "W2" V 5050 3525 50  0000 C CNN
F 1 "TEST_1P" H 5050 3500 50  0001 C CNN
F 2 "Rewire_Circuits:STANDALONE-LEGO-HOLE-PLATED" H 5250 3300 50  0001 C CNN
F 3 "" H 5250 3300 50  0000 C CNN
	1    5050 3300
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W3
U 1 1 58333352
P 5050 3400
F 0 "W3" V 5050 3625 50  0000 C CNN
F 1 "TEST_1P" H 5050 3600 50  0001 C CNN
F 2 "Rewire_Circuits:STANDALONE-LEGO-HOLE-PLATED" H 5250 3400 50  0001 C CNN
F 3 "" H 5250 3400 50  0000 C CNN
	1    5050 3400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W4
U 1 1 58333384
P 5050 3500
F 0 "W4" V 5050 3725 50  0000 C CNN
F 1 "TEST_1P" H 5050 3700 50  0001 C CNN
F 2 "Rewire_Circuits:STANDALONE-LEGO-HOLE-PLATED" H 5250 3500 50  0001 C CNN
F 3 "" H 5250 3500 50  0000 C CNN
	1    5050 3500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W5
U 1 1 583333BD
P 5050 3600
F 0 "W5" V 5050 3825 50  0000 C CNN
F 1 "TEST_1P" H 5050 3800 50  0001 C CNN
F 2 "Rewire_Circuits:STANDALONE-LEGO-HOLE-PLATED" H 5250 3600 50  0001 C CNN
F 3 "" H 5250 3600 50  0000 C CNN
	1    5050 3600
	0    1    1    0   
$EndComp
$Comp
L CAP-CER-1UF-16V-X7R-RADIAL C1
U 1 1 5833A09E
P 2825 3550
F 0 "C1" H 2925 3600 50  0000 L CNN
F 1 "1uf" H 2925 3500 50  0000 L CNN
F 2 "Rewire_NonLego:CAP-DISC-D7.5MM-P5MM" H 2825 3200 50  0001 C CIN
F 3 "https://product.tdk.com/info/en/documents/catalog/leadmlcc_conventional_fk_en.pdf" H 2825 3550 5   0001 C CNN
F 4 "C_Disc_D7.5_P5" H 2825 3200 50  0001 C CIN "Package"
F 5 "TDK" H 2825 3200 50  0001 C CIN "MF_Name"
F 6 "FK28X7R1C105K" H 2825 3200 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 2825 3200 50  0001 C CIN "S1_Name"
F 8 "445-8614-ND" H 2825 3200 50  0001 C CIN "S1_PN"
F 9 "CAP CER 1UF 16V X7R RADIAL" H 2825 3200 50  0001 C CIN "Description"
F 10 "Not Verified" H 2825 3200 50  0001 C CIN "Verified"
	1    2825 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3750 2825 3750
Wire Wire Line
	2825 3750 2825 3650
Connection ~ 2700 3750
Wire Wire Line
	2825 3200 2825 3450
Connection ~ 2700 3200
$EndSCHEMATC
