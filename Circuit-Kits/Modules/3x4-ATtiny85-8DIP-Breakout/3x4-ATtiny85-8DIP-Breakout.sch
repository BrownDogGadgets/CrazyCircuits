EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "3x4 ATtiny85 8DIP Breakout Module"
Date "18 Jan 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Text Notes 6000 3800 0    50   ~ 0
Text
$Comp
L crazy_circuits:ATTINY85-P U1
U 1 1 5880402D
P 5025 3975
F 0 "U1" H 3875 4375 50  0000 C CNN
F 1 "ATTINY85-P" H 6025 3575 50  0000 C CNN
F 2 "Crazy_Circuits:DIP8-3x4-ATtiny85" H 6025 3975 50  0001 C CIN
F 3 "" H 5025 3975 50  0000 C CNN
F 4 "IC MCU 8BIT ATTINY85 8DIP" H 5025 3975 60  0001 C CNN "Description"
F 5 "Microchip" H 5025 3975 60  0001 C CNN "MF_Name"
F 6 "ATTINY85-20PU" H 5025 3975 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 5025 3975 60  0001 C CNN "S1_Name"
F 8 "ATTINY85-20PU-ND" H 5025 3975 60  0001 C CNN "S1_PN"
	1    5025 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 3725 3475 3725
Wire Wire Line
	3675 3825 3475 3825
Wire Wire Line
	3475 3925 3675 3925
Wire Wire Line
	3675 4025 3475 4025
Wire Wire Line
	3475 4125 3675 4125
Wire Wire Line
	3675 4225 3475 4225
Wire Wire Line
	6375 3725 6525 3725
Wire Wire Line
	6375 4225 6550 4225
$EndSCHEMATC
