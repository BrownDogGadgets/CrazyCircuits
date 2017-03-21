EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-Mini-Potentiometer-3361P-SMT-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Mini Potentiometer 3361P SMT Module"
Date "17 Mar 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L TRIMPOT-10K-3PIN-TH-3368P-1-103TLF R1
U 1 1 5882C850
P 4600 3900
F 0 "R1" H 4500 3950 50  0000 R CNN
F 1 "10K TRIMPOT" H 4500 3850 50  0000 R CNN
F 2 "Crazy_Circuits:POTENTIOMETER-3361P-SMT-2x3" H 4600 3550 50  0001 C CIN
F 3 "" V 4600 3900 5   0001 C CNN
F 4 "TRIMMER 10K OHM 0.5W SMD" H 4600 3550 50  0001 C CIN "Description"
F 5 "Bourns" H 4600 3550 50  0001 C CIN "MF_Name"
F 6 "3361P-1-103GLF" H 4600 3550 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4600 3550 50  0001 C CIN "S1_Name"
F 8 "3361P-103GLFCT-ND" H 4600 3550 50  0001 C CIN "S1_PN"
	1    4600 3900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5882C895
P 4600 3650
F 0 "#PWR01" H 4600 3500 50  0001 C CNN
F 1 "VCC" H 4600 3800 50  0000 C CNN
F 2 "" H 4600 3650 50  0000 C CNN
F 3 "" H 4600 3650 50  0000 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3650 4600 3750
Wire Wire Line
	4600 4050 4600 4125
$Comp
L GND #PWR02
U 1 1 5882C8C2
P 4600 4125
F 0 "#PWR02" H 4600 3875 50  0001 C CNN
F 1 "GND" H 4600 3975 50  0000 C CNN
F 2 "" H 4600 4125 50  0000 C CNN
F 3 "" H 4600 4125 50  0000 C CNN
	1    4600 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 4950 3900
Text Label 4950 3900 2    50   ~ 0
2
$EndSCHEMATC
