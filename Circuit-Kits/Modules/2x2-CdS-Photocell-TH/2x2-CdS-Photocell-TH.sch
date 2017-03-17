EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:wickerlib
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 CdS Photocell TH Module"
Date "17 Mar 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L Photocell LDR1
U 1 1 58CC3684
P 4825 3275
F 0 "LDR1" H 4900 3325 50  0000 L CNN
F 1 "Photocell" H 4900 3225 50  0000 L CNN
F 2 "" H 4825 3075 50  0001 C CIN
F 3 "" V 4825 3275 5   0001 C CNN
F 4 "PHOTOCELL 16-33KOHM" H 4825 3275 60  0001 C CNN "Description"
F 5 "Luna" H 4825 3275 60  0001 C CNN "MF_Name"
F 6 "PDV-P8103" H 4825 3275 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4825 3275 60  0001 C CNN "S1_Name"
F 8 "PDV-P8103-ND" H 4825 3275 60  0001 C CNN "S1_PN"
	1    4825 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3175 4825 3100
Wire Wire Line
	4825 3375 4825 3500
Wire Wire Line
	4825 3100 4750 3100
Wire Wire Line
	4825 3500 4750 3500
Text Label 4750 3100 0    50   ~ 0
+
Text Label 4750 3500 0    50   ~ 0
-
$EndSCHEMATC
