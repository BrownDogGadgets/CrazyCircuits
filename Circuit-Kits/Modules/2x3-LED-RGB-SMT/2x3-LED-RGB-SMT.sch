EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 LED RGB SMT"
Date "21 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4600 3300 4600 3250
$Comp
L VCC #PWR01
U 1 1 58830E25
P 4600 3250
F 0 "#PWR01" H 4600 3100 50  0001 C CNN
F 1 "VCC" H 4600 3400 50  0000 C CNN
F 2 "" H 4600 3250 50  0000 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3625 4450 4125
Wire Wire Line
	4450 4125 4900 4125
Wire Wire Line
	4600 3625 4600 3975
Wire Wire Line
	4600 3975 4900 3975
Wire Wire Line
	4750 3625 4750 3825
Wire Wire Line
	4750 3825 4900 3825
Text Label 4900 4125 2    50   ~ 0
R
Text Label 4900 3975 2    50   ~ 0
G
Text Label 4900 3825 2    50   ~ 0
B
$Comp
L LED-RGB-SMT-QBLP600-RGB LED1
U 1 1 58831339
P 4750 3525
F 0 "LED1" H 4825 3575 50  0000 L CNN
F 1 "QBLP600-RGB" H 4825 3475 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-0606-2x3" H 4750 3175 50  0001 C CIN
F 3 "http://www.qt-brightek.com/datasheet/QBLP600-RGB.pdf" H 4750 3525 5   0001 C CNN
F 4 "LED CHIP RGB WTR CLR 0606 SMD" H 4750 3175 50  0001 C CIN "Description"
F 5 "Digikey" H 4750 3175 50  0001 C CIN "MF_Name"
F 6 "QBLP600-RGB" H 4750 3175 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4750 3175 50  0001 C CIN "S1_Name"
F 8 "1516-1184-1-ND" H 4750 3175 50  0001 C CIN "S1_PN"
	1    4750 3525
	1    0    0    -1  
$EndComp
$EndSCHEMATC
