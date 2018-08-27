EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Current-Limited White SMT LED Module"
Date "08 May 2018"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:VCC #PWR1
U 1 1 5AF330D8
P 4400 3275
F 0 "#PWR1" H 4400 3125 50  0001 C CNN
F 1 "VCC" H 4400 3425 50  0000 C CNN
F 2 "" H 4400 3275 50  0000 C CNN
F 3 "" H 4400 3275 50  0000 C CNN
	1    4400 3275
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:RES-100-1%-1/4W-1206 R1
U 1 1 5AF330EC
P 4400 3475
F 0 "R1" H 4450 3525 50  0000 L CNN
F 1 "100" H 4450 3425 50  0000 L CNN
F 2 "" H 4400 3125 50  0001 C CIN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_9.pdf" H 4400 3475 5   0001 C CNN
F 4 "RES 100 OHM 5% 1/4W 1206" H 4400 3125 50  0001 C CIN "Description"
F 5 "Yageo" H 4400 3125 50  0001 C CIN "MF_Name"
F 6 "RC1206FR-07100RL" H 4400 3125 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4400 3125 50  0001 C CIN "S1_Name"
F 8 "311-100FRCT-ND" H 4400 3125 50  0001 C CIN "S1_PN"
	1    4400 3475
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:LED-WHITE-1206-SMT-QBLP650-IW LED1
U 1 1 5AF3312A
P 4400 3775
F 0 "LED1" H 4475 3825 50  0000 L CNN
F 1 "WHITE" H 4475 3725 50  0000 L CNN
F 2 "Crazy_Circuits:LED-SMT-1206-2x2-LIMITED" H 4400 3425 50  0001 C CIN
F 3 "http://www.qt-brightek.com/datasheet/QBLP650_series.pdf" V 4400 3775 5   0001 C CNN
F 4 "LED WHITE CLEAR SMT 1206" H 4400 3425 50  0001 C CIN "Description"
F 5 "QTB" H 4400 3425 50  0001 C CIN "MF_Name"
F 6 "QBLP650-IW" H 4400 3425 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4400 3425 50  0001 C CIN "S1_Name"
F 8 "1516-1164-1-ND" H 4400 3425 50  0001 C CIN "S1_PN"
	1    4400 3775
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR2
U 1 1 5AF33182
P 4400 3975
F 0 "#PWR2" H 4400 3725 50  0001 C CNN
F 1 "GND" H 4400 3825 50  0000 C CNN
F 2 "" H 4400 3975 50  0000 C CNN
F 3 "" H 4400 3975 50  0000 C CNN
	1    4400 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3975 4400 3875
Wire Wire Line
	4400 3675 4400 3575
Wire Wire Line
	4400 3375 4400 3275
$EndSCHEMATC
