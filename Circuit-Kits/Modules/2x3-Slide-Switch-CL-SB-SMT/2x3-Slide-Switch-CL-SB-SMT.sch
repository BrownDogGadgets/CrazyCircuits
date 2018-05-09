EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-Slide-Switch-CL-SB-SMT-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Slide Switch (CL-SB) SMT"
Date "17 Mar 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L SPDT_Small SW1
U 1 1 587FDCA1
P 4675 3625
F 0 "SW1" V 4450 3725 50  0000 C CNN
F 1 "P/N CL-SB-12A-01T" V 4725 3750 50  0000 C CNN
F 2 "Crazy_Circuits:SWITCH-SPDT-3PIN-CL-SB-SMT-2x3" H 4575 3625 50  0001 C CNN
F 3 "" H 4575 3625 50  0000 C CNN
F 4 "SWITCH SLIDE SPDT 200MA 12V CL-SB" V 4675 3625 60  0001 C CNN "Description"
F 5 "Copal" V 4675 3625 60  0001 C CNN "MF_Name"
F 6 "CL-SB-12A-01T" V 4675 3625 60  0001 C CNN "MF_PN"
F 7 "Digikey" V 4675 3625 60  0001 C CNN "S1_Name"
F 8 "563-1314-1-ND" V 4675 3625 60  0001 C CNN "S1_PN"
	1    4675 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	4575 3475 4400 3475
Wire Wire Line
	4575 3575 4400 3575
Wire Wire Line
	4925 3525 5075 3525
Text Label 5075 3525 2    50   ~ 0
2
Text Label 4400 3475 0    50   ~ 0
1
Text Label 4400 3575 0    50   ~ 0
3
$EndSCHEMATC
