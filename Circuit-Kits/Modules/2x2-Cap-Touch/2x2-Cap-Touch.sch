EESchema Schematic File Version 2
LIBS:rewire_circuits
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x2 Capacitive Touch Module "
Date "19 Dec 2016"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L CapTouch_Pad PAD1
U 1 1 58584474
P 4675 3325
F 0 "PAD1" H 4685 3395 50  0000 L CNN
F 1 "CapTouch_Pad" H 4685 3245 50  0000 L CNN
F 2 "Rewire_Circuits:TOUCH-SMT-2x2" H 4675 3325 50  0001 C CNN
F 3 "" H 4675 3325 50  0000 C CNN
	1    4675 3325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 585844BB
P 4675 3575
F 0 "#PWR01" H 4675 3325 50  0001 C CNN
F 1 "GND" H 4675 3425 50  0000 C CNN
F 2 "" H 4675 3575 50  0000 C CNN
F 3 "" H 4675 3575 50  0000 C CNN
	1    4675 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 3425 4675 3575
Wire Wire Line
	4675 3225 4675 3025
$Comp
L VCC #PWR02
U 1 1 585844D9
P 4675 3025
F 0 "#PWR02" H 4675 2875 50  0001 C CNN
F 1 "VCC" H 4675 3175 50  0000 C CNN
F 2 "" H 4675 3025 50  0000 C CNN
F 3 "" H 4675 3025 50  0000 C CNN
	1    4675 3025
	1    0    0    -1  
$EndComp
$EndSCHEMATC
