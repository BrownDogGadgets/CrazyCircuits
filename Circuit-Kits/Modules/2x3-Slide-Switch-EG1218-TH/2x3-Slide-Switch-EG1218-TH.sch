EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:2x3-Slide-Switch-EG1218-TH-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Slide Switch TH (EG1218)"
Date "17 Mar 2017"
Rev "v1.4"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:SWITCH-SLIDE-SPDT-200MA-30V-EG1218 SW1
U 1 1 587FDCA1
P 4725 3525
F 0 "SW1" H 4775 3650 50  0000 C CNN
F 1 "P/N EG1218" H 4775 3400 50  0000 C CNN
F 2 "" H 4625 3525 50  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/119/EG.pdf" H 4625 3525 50  0001 C CNN
F 4 "SWITCH SLIDE SPDT 200MA 30V" V 4725 3525 60  0001 C CNN "Description"
F 5 "E-Switch" V 4725 3525 60  0001 C CNN "MF_Name"
F 6 "EG1218" V 4725 3525 60  0001 C CNN "MF_PN"
F 7 "Digikey" V 4725 3525 60  0001 C CNN "S1_Name"
F 8 "EG1903-ND" V 4725 3525 60  0001 C CNN "S1_PN"
F 9 "457" H 0   0   50  0001 C CNN "XSize_mils"
F 10 "157" H 0   0   50  0001 C CNN "YSize_mils"
F 11 "th" H 0   0   50  0001 C CNN "Type"
	1    4725 3525
	1    0    0    -1  
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
