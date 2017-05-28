EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x2-Servo-Header-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Servo Header Module"
Date "18 Jan 2017"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L Servo_Breakout J1
U 1 1 588073C1
P 4600 3975
F 0 "J1" H 4450 4150 50  0000 L CNN
F 1 "Servo_Breakout" H 4550 3850 50  0001 L CNN
F 2 "Crazy_Circuits:SERVO-2x2" H 4600 3975 50  0001 C CNN
F 3 "" H 4600 3975 50  0000 C CNN
F 4 "MALE PIN HEADER 1x3 2.54MM PITCH" H 4600 3975 60  0001 C CNN "Description"
F 5 "Wurth" H 4600 3975 60  0001 C CNN "MF_Name"
F 6 "61300311121" H 4600 3975 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4600 3975 60  0001 C CNN "S1_Name"
F 8 "732-5316-ND" H 4600 3975 60  0001 C CNN "S1_PN"
	1    4600 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3925 4900 3925
Wire Wire Line
	4750 4000 5000 4000
Wire Wire Line
	4750 4075 4825 4075
$Comp
L GND #PWR01
U 1 1 588073F0
P 4825 4075
F 0 "#PWR01" H 4825 3825 50  0001 C CNN
F 1 "GND" H 4825 3925 50  0000 C CNN
F 2 "" H 4825 4075 50  0000 C CNN
F 3 "" H 4825 4075 50  0000 C CNN
	1    4825 4075
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58807406
P 5000 3950
F 0 "#PWR02" H 5000 3800 50  0001 C CNN
F 1 "VCC" H 5000 4100 50  0000 C CNN
F 2 "" H 5000 3950 50  0000 C CNN
F 3 "" H 5000 3950 50  0000 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4000 5000 3950
Text Label 4900 3925 2    50   ~ 0
SIG
$EndSCHEMATC
