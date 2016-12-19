EESchema Schematic File Version 2
LIBS:rewire_circuits
LIBS:2x2-Button-Momentary-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Momentary Pushbutton Module"
Date "December 15, 2016"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L SW_PUSH SW1
U 1 1 58531A9A
P 4675 3550
F 0 "SW1" H 4825 3660 50  0000 C CNN
F 1 "SW_PUSH" H 4675 3470 50  0000 C CNN
F 2 "Rewire_Circuits:BUTTON-2x2-TH-OMRON-B3F-1XXX" H 4675 3550 50  0001 C CNN
F 3 "" H 4675 3550 50  0000 C CNN
	1    4675 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 3550 4225 3550
Wire Wire Line
	4975 3550 5150 3550
Text Label 4225 3550 0    50   ~ 0
1
Text Label 5150 3550 2    50   ~ 0
2
$EndSCHEMATC
