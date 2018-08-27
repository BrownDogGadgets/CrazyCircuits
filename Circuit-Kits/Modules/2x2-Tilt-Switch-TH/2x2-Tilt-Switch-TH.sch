EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Tilt Switch TH"
Date "17 Mar 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4575 3950 4400 3950
Wire Wire Line
	5175 3950 5400 3950
Text Label 5400 3950 2    50   ~ 0
2
Text Label 4400 3950 0    50   ~ 0
1
$Comp
L crazy_circuits:SW_TOGGLE SW1
U 1 1 58CABBD1
P 4875 3950
F 0 "SW1" H 5025 4060 50  0000 C CNN
F 1 "SW_TILT" H 4875 3870 50  0000 C CNN
F 2 "Crazy_Circuits:TILT-SENSOR-TH-2x2" H 4875 3950 50  0001 C CNN
F 3 "" H 4875 3950 50  0000 C CNN
F 4 "TILT SENSOR ROLLING BALL 107-2006-EV" H 4875 3950 60  0001 C CNN "Description"
F 5 "Mountain Switch" H 4875 3950 60  0001 C CNN "MF_Name"
F 6 "107-2006-EV" H 4875 3950 60  0001 C CNN "MF_PN"
F 7 "Mouser" H 4875 3950 60  0001 C CNN "S1_Name"
F 8 "107-2006-EV" H 4875 3950 60  0001 C CNN "S1_PN"
	1    4875 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
