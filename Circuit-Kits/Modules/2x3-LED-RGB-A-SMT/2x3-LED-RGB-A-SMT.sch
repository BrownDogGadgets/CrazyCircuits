EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 LED RGB (A) SMT"
Date "30 Apr 2018"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L VCC #PWR?
U 1 1 5AE777B7
P 4750 3450
F 0 "#PWR?" H 4750 3300 50  0001 C CNN
F 1 "VCC" H 4750 3600 50  0000 C CNN
F 2 "" H 4750 3450 50  0000 C CNN
F 3 "" H 4750 3450 50  0000 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4750 3500
Wire Wire Line
	4900 3825 4900 3925
Wire Wire Line
	4900 3925 5000 3925
Wire Wire Line
	4750 3825 4750 4000
Wire Wire Line
	4750 4000 5000 4000
Wire Wire Line
	4600 3825 4600 4075
Wire Wire Line
	4600 4075 5000 4075
Text Label 4925 3925 0    50   ~ 0
B
Text Label 4925 4000 0    50   ~ 0
G
Text Label 4925 4075 0    50   ~ 0
R
$Comp
L LED-RGB-SMT-19-237-RGB LED?
U 1 1 5AE77B2A
P 4900 3725
F 0 "LED?" H 4975 3775 50  0000 L CNN
F 1 "LED-RGB-SMT-19-237-RGB" H 4975 3675 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-0606-19-237-2x3" H 4900 3375 50  0001 C CIN
F 3 "http://erp.fastbom.com/uploads/p_dn/info/558513/19-237-R6GHBHC-A01-2T-139.pdf" H 4900 3725 5   0001 C CNN
F 4 "LED CHIP RGB 19-237 0606 SMD " H 4900 3375 50  0001 C CIN "Description"
F 5 "Digikey" H 4900 3375 50  0001 C CIN "MF_Name"
F 6 "19-237/R6GHBHC-A07/2T" H 4900 3375 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4900 3375 50  0001 C CIN "S1_Name"
F 8 "1080-1590-1-ND" H 4900 3375 50  0001 C CIN "S1_PN"
	1    4900 3725
	1    0    0    -1  
$EndComp
$EndSCHEMATC
