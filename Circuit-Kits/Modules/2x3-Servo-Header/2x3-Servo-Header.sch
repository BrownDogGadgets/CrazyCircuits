EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-Servo-Header-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Servo Header"
Date "20 Jan 2017"
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
P 5175 4300
F 0 "J1" H 5025 4475 50  0000 L CNN
F 1 "Servo_Breakout" H 5125 4175 50  0001 L CNN
F 2 "Crazy_Circuits:SERVO-2x3" H 5175 4300 50  0001 C CNN
F 3 "" H 5175 4300 50  0000 C CNN
F 4 "MALE PIN HEADER 1x3 2.54MM PITCH" H 5175 4300 60  0001 C CNN "Description"
F 5 "Wurth" H 5175 4300 60  0001 C CNN "MF_Name"
F 6 "61300311121" H 5175 4300 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 5175 4300 60  0001 C CNN "S1_Name"
F 8 "732-5316-ND" H 5175 4300 60  0001 C CNN "S1_PN"
	1    5175 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 4250 5450 4250
Wire Wire Line
	5325 4325 5575 4325
Wire Wire Line
	5575 4325 5575 4200
Text Label 5450 4250 2    50   ~ 0
SIG
$Comp
L VCC #PWR01
U 1 1 5882D78E
P 5575 4200
F 0 "#PWR01" H 5575 4050 50  0001 C CNN
F 1 "VCC" H 5575 4350 50  0000 C CNN
F 2 "" H 5575 4200 50  0000 C CNN
F 3 "" H 5575 4200 50  0000 C CNN
	1    5575 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5882D7A4
P 5400 4475
F 0 "#PWR02" H 5400 4225 50  0001 C CNN
F 1 "GND" H 5400 4325 50  0000 C CNN
F 2 "" H 5400 4475 50  0000 C CNN
F 3 "" H 5400 4475 50  0000 C CNN
	1    5400 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4475 5400 4400
Wire Wire Line
	5400 4400 5325 4400
$EndSCHEMATC
