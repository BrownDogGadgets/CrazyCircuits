EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:1x3-Button-Momentary-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "1x3 Momentary Pushbutton Module"
Date "18 Dec 2016"
Rev "v1.3"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4075 3450 4050 3450
Wire Wire Line
	4675 3450 4700 3450
Text Label 4825 3450 2    50   ~ 0
2
Text Label 3925 3450 0    50   ~ 0
1
$Comp
L crazy_circuits:SWITCH-MOMENT-SPDT-TH-B3F-1000 SW1
U 1 1 5BAAC142
P 4375 3450
F 0 "SW1" H 4375 3705 50  0000 C CNN
F 1 "SWITCH-PUSH-MOMENT-TH-B3F-1000" H 4375 3614 50  0000 C CNN
F 2 "Crazy_Circuits:BUTTON-1x3-TH-OMRON-B3F-1XXX" H 4375 3250 50  0001 C CIN
F 3 "http://www.omron.com/ecb/products/pdf/en-b3fs_4.pdf" H 4375 3450 10  0001 C CNN
F 4 "SWITCH MOMENT SPST-NO 0.05A 24V SMT B3F-1000" H 4375 3250 50  0001 C CIN "Description"
F 5 "Omron" H 4375 3250 50  0001 C CIN "MF_Name"
F 6 "B3F-1000" H 4375 3250 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4375 3250 50  0001 C CIN "S1_Name"
F 8 "SW400-ND" H 4375 3250 50  0001 C CIN "S1_PN"
F 9 "237" H 4375 3260 50  0001 C CNN "XSize_mils"
F 10 "237" H 4375 3260 50  0001 C CNN "YSize_mils"
F 11 "th" H 4375 3260 50  0001 C CNN "Type"
	1    4375 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3450 4050 3550
Wire Wire Line
	4050 3550 4075 3550
Connection ~ 4050 3450
Wire Wire Line
	4050 3450 3925 3450
Wire Wire Line
	4675 3550 4700 3550
Wire Wire Line
	4700 3550 4700 3450
Connection ~ 4700 3450
Wire Wire Line
	4700 3450 4825 3450
$EndSCHEMATC
