EESchema Schematic File Version 2
LIBS:crazy_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 SMT LED"
Date "19 Dec 2016"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L LED LED1
U 1 1 58584C75
P 4700 3300
F 0 "LED1" H 4775 3350 50  0000 L CNN
F 1 "RED 2V" H 4775 3250 50  0000 L CNN
F 2 "Crazy_Circuits:LED-SMT-1206-2x2-CENTER" H 4700 3100 50  0001 C CIN
F 3 "" V 4700 3300 10  0001 C CNN
F 4 "LED RED 2V 625NM 1206 SMT" H 4700 3300 60  0001 C CNN "Description"
F 5 "Kingbright" H 4700 3300 60  0001 C CNN "MF_Name"
F 6 "150120RS75000" H 4700 3300 60  0001 C CNN "MF_PN"
F 7 "Digikey" H 4700 3300 60  0001 C CNN "S1_Name"
F 8 "732-4991-1-ND" H 4700 3300 60  0001 C CNN "S1_PN"
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58584C8F
P 4700 3100
F 0 "#PWR?" H 4700 2950 50  0001 C CNN
F 1 "VCC" H 4700 3250 50  0000 C CNN
F 2 "" H 4700 3100 50  0000 C CNN
F 3 "" H 4700 3100 50  0000 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3100 4700 3200
$Comp
L GND #PWR?
U 1 1 58584CA8
P 4700 3475
F 0 "#PWR?" H 4700 3225 50  0001 C CNN
F 1 "GND" H 4700 3325 50  0000 C CNN
F 2 "" H 4700 3475 50  0000 C CNN
F 3 "" H 4700 3475 50  0000 C CNN
	1    4700 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3475 4700 3400
$EndSCHEMATC
