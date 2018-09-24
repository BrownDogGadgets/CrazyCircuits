EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:1x3-Button-Momentary-SMT-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "1x3 Momentary Pushbutton SMT Module"
Date "23 May 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4575 3725 4525 3725
Wire Wire Line
	4525 3725 4525 3625
Wire Wire Line
	4400 3625 4525 3625
Connection ~ 4525 3625
Text Label 4400 3625 0    50   ~ 0
1
Wire Wire Line
	5175 3625 5225 3625
Wire Wire Line
	5175 3725 5225 3725
Wire Wire Line
	5225 3725 5225 3625
Connection ~ 5225 3625
Text Label 5325 3625 2    50   ~ 0
2
Wire Wire Line
	4525 3625 4575 3625
Wire Wire Line
	5225 3625 5325 3625
$Comp
L crazy_circuits:SWITCH-MOMENT-SPDT-SMT-PTS645 SW1
U 1 1 5BA9E78D
P 4875 3625
F 0 "SW1" H 4875 3775 50  0000 C CNN
F 1 "P/N PTS645" H 4875 3425 50  0000 C CNN
F 2 "Wickerlib:SWITCH-OMRON-MOMENTARY-SMT-B3FS-4000" H 4875 3275 50  0001 C CIN
F 3 "https://www.ckswitches.com/media/1471/pts645.pdf" H 4875 3625 10  0001 C CNN
F 4 "SWITCH MOMENT SPST-NO 0.05A 12V SMT PTS645" H 4875 3275 50  0001 C CIN "Description"
F 5 "C&K" H 4875 3275 50  0001 C CIN "MF_Name"
F 6 "PTS645SM43SMTR92 LFS" H 4875 3275 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4875 3275 50  0001 C CIN "S1_Name"
F 8 "CKN9112CT-ND" H 4875 3275 50  0001 C CIN "S1_PN"
F 9 "237" H 4725 3285 50  0001 C CNN "XSize_mils"
F 10 "237" H 4875 3285 50  0001 C CNN "YSize_mils"
F 11 "smt" H 4975 3285 50  0001 C CNN "Type"
	1    4875 3625
	1    0    0    -1  
$EndComp
$EndSCHEMATC
