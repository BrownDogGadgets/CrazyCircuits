EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:wickerlib
LIBS:2x3-Stereo-Headphone-Jack-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Stereo Headphone Jack"
Date "26 Apr 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L CONN-JACK-STEREO-R/A-3PIN-3.5MM J1
U 1 1 5900EFCB
P 4875 3350
F 0 "J1" H 4900 3600 50  0000 L CNN
F 1 "CONN-JACK-STEREO-R/A-3PIN-3.5MM" H 4875 3000 50  0000 L CNN
F 2 "Crazy_Circuits:STEREO-JACK-SJ-3523N-TH-2x3" H 4875 3000 50  0001 C CIN
F 3 "http://www.cui.com/product/resource/digikeypdf/sj1-352xn_series.pdf" H 4875 3350 5   0001 C CNN
F 4 "CONN JACK STEREO R/A 3PIN 3.5MM" H 4875 3000 50  0001 C CIN "Description"
F 5 "CUI" H 4875 3000 50  0001 C CIN "MF_Name"
F 6 "SJ1-3523N" H 4875 3000 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4875 3000 50  0001 C CIN "S1_Name"
F 8 "CP1-3523N-ND" H 4875 3000 50  0001 C CIN "S1_PN"
	1    4875 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 3200 4700 3200
Wire Wire Line
	4700 3100 4700 3300
$Comp
L VCC #PWR01
U 1 1 5900E8EC
P 4700 3100
F 0 "#PWR01" H 4700 2950 50  0001 C CNN
F 1 "VCC" H 4700 3250 50  0000 C CNN
F 2 "" H 4700 3100 50  0000 C CNN
F 3 "" H 4700 3100 50  0000 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3300 4875 3300
Connection ~ 4700 3200
Wire Wire Line
	4875 3400 4700 3400
Wire Wire Line
	4700 3400 4700 3700
$Comp
L GND #PWR02
U 1 1 5900E910
P 4700 3700
F 0 "#PWR02" H 4700 3450 50  0001 C CNN
F 1 "GND" H 4700 3550 50  0000 C CNN
F 2 "" H 4700 3700 50  0000 C CNN
F 3 "" H 4700 3700 50  0000 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 3600 4700 3600
Connection ~ 4700 3600
Wire Wire Line
	4875 3500 4700 3500
Connection ~ 4700 3500
$EndSCHEMATC
