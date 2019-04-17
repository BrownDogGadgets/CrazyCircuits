EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Female Servo Header Module"
Date "17 Apr 2019"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:HEADER-FEMALE-3POS-TH-1x03-P0.1IN J1
U 1 1 5CB7A53D
P 4575 3450
F 0 "J1" H 4575 3650 50  0000 C CNN
F 1 "SERVO" H 4525 3250 50  0000 C CNN
F 2 "Crazy_Circuits:SERVO-2x3" H 4575 3100 50  0001 C CIN
F 3 "https://cdn.harwin.com/pdfs/60page140.pdf" H 4575 3450 5   0001 C CNN
F 4 "HEADER FEMALE 3POS TH 1x03 0.1IN" H 4575 3100 50  0001 C CIN "Description"
F 5 "Harwin" H 4575 3100 50  0001 C CIN "MF_Name"
F 6 "M20-7820246" H 4575 3100 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4575 3100 50  0001 C CIN "S1_Name"
F 8 "952-1784-ND" H 4575 3100 50  0001 C CIN "S1_PN"
F 9 "138" H 4575 3100 50  0001 C CIN "XSize_mils"
F 10 "341" H 4575 3100 50  0001 C CIN "YSize_mils"
F 11 "th" H 4575 3100 50  0001 C CIN "Type"
	1    4575 3450
	-1   0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR?
U 1 1 5CB7A72B
P 5025 3650
F 0 "#PWR?" H 5025 3400 50  0001 C CNN
F 1 "GND" H 5030 3477 50  0000 C CNN
F 2 "" H 5025 3650 50  0000 C CNN
F 3 "" H 5025 3650 50  0000 C CNN
	1    5025 3650
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:VCC #PWR?
U 1 1 5CB7A7AF
P 5025 3250
F 0 "#PWR?" H 5025 3100 50  0001 C CNN
F 1 "VCC" H 5042 3423 50  0000 C CNN
F 2 "" H 5025 3250 50  0000 C CNN
F 3 "" H 5025 3250 50  0000 C CNN
	1    5025 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 3350 4925 3350
Text Label 4925 3350 2    50   ~ 0
SIG
Wire Wire Line
	4775 3450 5025 3450
Wire Wire Line
	5025 3450 5025 3250
Wire Wire Line
	4775 3550 5025 3550
Wire Wire Line
	5025 3550 5025 3650
$EndSCHEMATC
