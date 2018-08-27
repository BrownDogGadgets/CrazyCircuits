EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Push Terminal 3mm Pitch SMT"
Date "17 Mar 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:Conn_2 J1
U 1 1 587EB9D9
P 4950 3575
F 0 "J1" H 4900 3700 50  0000 L CNN
F 1 "Push Terminal Block" H 4900 3450 50  0000 L CNN
F 2 "Crazy_Circuits:PUSH-TERMINAL-3MM-SMT-2x3" H 4950 3575 50  0001 C CNN
F 3 "" H 4950 3575 50  0000 C CNN
F 4 "Molex" H 4950 3575 60  0001 C CNN "MF_Name"
F 5 "1042380210" H 4950 3575 60  0001 C CNN "MF_PN"
F 6 "Digikey" H 4950 3575 60  0001 C CNN "S1_Name"
F 7 "WM11924CT-ND" H 4950 3575 60  0001 C CNN "S1_PN"
F 8 "CONN MINI LITE-TRAP RCPT 2POS" H 4950 3575 60  0001 C CNN "Description"
	1    4950 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3525 5225 3525
Wire Wire Line
	5100 3600 5225 3600
Text Label 5225 3525 2    50   ~ 0
1
Text Label 5225 3600 2    50   ~ 0
2
$EndSCHEMATC
