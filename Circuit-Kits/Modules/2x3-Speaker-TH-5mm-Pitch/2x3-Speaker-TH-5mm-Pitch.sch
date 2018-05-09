EESchema Schematic File Version 2
LIBS:2x3-Speaker-TH-5mm-Pitch-rescue
LIBS:crazy_circuits
LIBS:2x3-Speaker-TH-5mm-Pitch-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Piezo Speaker (5mm Pitch) Module"
Date "18 Jan 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L Speaker SPK1
U 1 1 58806521
P 4825 3700
F 0 "SPK1" H 4975 3750 50  0000 L CNN
F 1 "Speaker" H 4975 3650 50  0000 L CNN
F 2 "Crazy_Circuits:SPEAKER-PIEZO-5MMPitch-PS12-PS14-2x3" V 4825 3740 50  0001 C CNN
F 3 "" V 4825 3740 50  0000 C CNN
F 4 "AUDIO SPEAKER PIEZO TH PS1240" H 4825 3700 60  0001 C CNN "Description"
F 5 "TDK" H 4825 3700 60  0001 C CNN "MF_Name"
F 6 "PS1240P02BT" H 4825 3700 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4825 3700 60  0001 C CNN "S1_Name"
F 8 "445-2525-1-ND" H 4825 3700 60  0001 C CNN "S1_PN"
	1    4825 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3550 4825 3450
Wire Wire Line
	4825 3450 4650 3450
Wire Wire Line
	4825 3850 4825 3900
Wire Wire Line
	4825 3900 4650 3900
Text Label 4650 3450 0    50   ~ 0
1
Text Label 4650 3900 0    50   ~ 0
2
$EndSCHEMATC
