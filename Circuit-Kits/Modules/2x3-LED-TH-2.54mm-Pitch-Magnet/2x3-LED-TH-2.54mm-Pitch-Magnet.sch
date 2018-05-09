EESchema Schematic File Version 2
LIBS:crazy_circuits
LIBS:2x3-LED-TH-2.54mm-Pitch-Magnet-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "2x3 Magnet-compatible LED (2.54mm Pitch) Module"
Date "13 Jan 2017"
Rev "1.0"
Comp "CERN Open Hardware License v1.2."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L LED LED1
U 1 1 5878F851
P 5375 3425
F 0 "LED1" H 5450 3475 50  0000 L CNN
F 1 "LED" H 5450 3375 50  0000 L CNN
F 2 "Crazy_Circuits:LED-2.54MM-TH-2x3" H 5375 3225 50  0001 C CIN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/WP813GD.pdf" V 5375 3425 10  0001 C CNN
F 4 "LED GREEN 10MM DIA 2.54MM PITCH TH" H 5375 3425 60  0001 C CNN "Description"
F 5 "Digikey" H 5375 3425 60  0001 C CNN "S1_Name"
F 6 "754-1898-ND" H 5375 3425 60  0001 C CNN "S1_PN"
F 7 "Kingbright" H 5375 3425 60  0001 C CNN "MF_Name"
F 8 "WP813GD" H 5375 3425 60  0001 C CNN "MF_PN"
	1    5375 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3325 5375 3200
$Comp
L VCC #PWR01
U 1 1 5878F873
P 5375 3200
F 0 "#PWR01" H 5375 3050 50  0001 C CNN
F 1 "VCC" H 5375 3350 50  0000 C CNN
F 2 "" H 5375 3200 50  0000 C CNN
F 3 "" H 5375 3200 50  0000 C CNN
	1    5375 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5878F889
P 5375 3675
F 0 "#PWR02" H 5375 3425 50  0001 C CNN
F 1 "GND" H 5375 3525 50  0000 C CNN
F 2 "" H 5375 3675 50  0000 C CNN
F 3 "" H 5375 3675 50  0000 C CNN
	1    5375 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3675 5375 3525
$EndSCHEMATC
