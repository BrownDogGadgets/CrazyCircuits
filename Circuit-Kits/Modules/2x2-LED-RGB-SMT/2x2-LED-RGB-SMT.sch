EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x2-LED-RGB-SMT-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 RGB LED SMT"
Date "19 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	5850 4050 5850 4000
$Comp
L VCC #PWR01
U 1 1 58830E25
P 5850 4000
F 0 "#PWR01" H 5850 3850 50  0001 C CNN
F 1 "VCC" H 5850 4150 50  0000 C CNN
F 2 "" H 5850 4000 50  0000 C CNN
F 3 "" H 5850 4000 50  0000 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4375 5700 4875
Wire Wire Line
	5700 4875 6150 4875
Wire Wire Line
	5850 4375 5850 4725
Wire Wire Line
	5850 4725 6150 4725
Wire Wire Line
	6000 4375 6000 4575
Wire Wire Line
	6000 4575 6150 4575
Text Label 6150 4875 2    50   ~ 0
R
Text Label 6150 4725 2    50   ~ 0
G
Text Label 6150 4575 2    50   ~ 0
B
$Comp
L LED-RGB-SMT-QBLP600-RGB LED1
U 1 1 58831339
P 6000 4275
F 0 "LED1" H 6075 4325 50  0000 L CNN
F 1 "QBLP600-RGB" H 6075 4225 50  0000 L CNN
F 2 "Crazy_Circuits:LED-RGB-0606-2x2" H 6000 3925 50  0001 C CIN
F 3 "http://www.qt-brightek.com/datasheet/QBLP600-RGB.pdf" H 6000 4275 5   0001 C CNN
F 4 "LED CHIP RGB WTR CLR 0606 SMD" H 6000 3925 50  0001 C CIN "Description"
F 5 "Digikey" H 6000 3925 50  0001 C CIN "MF_Name"
F 6 "QBLP600-RGB" H 6000 3925 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 6000 3925 50  0001 C CIN "S1_Name"
F 8 "1516-1184-1-ND" H 6000 3925 50  0001 C CIN "S1_PN"
	1    6000 4275
	1    0    0    -1  
$EndComp
$EndSCHEMATC
