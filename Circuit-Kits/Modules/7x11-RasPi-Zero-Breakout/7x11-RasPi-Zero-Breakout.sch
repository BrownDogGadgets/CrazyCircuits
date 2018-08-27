EESchema Schematic File Version 4
LIBS:crazy_circuits
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "7x11 Raspberry Pi Zero Breakout Module"
Date "10 May 2018"
Rev "1.0"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
Wire Wire Line
	4375 2675 4500 2675
Wire Wire Line
	4375 2525 4375 2675
$Comp
L crazy_circuits:5V #PWR01
U 1 1 5AF86892
P 4125 2525
F 0 "#PWR01" H 4125 2375 50  0001 C CNN
F 1 "5V" H 4125 2675 50  0000 C CNN
F 2 "" H 4125 2525 50  0000 C CNN
F 3 "" H 4125 2525 50  0000 C CNN
	1    4125 2525
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:3.3V #PWR02
U 1 1 5AF86BDD
P 4375 2525
F 0 "#PWR02" H 4375 2375 50  0001 C CNN
F 1 "3.3V" H 4375 2675 50  0000 C CNN
F 2 "" H 4375 2525 50  0000 C CNN
F 3 "" H 4375 2525 50  0000 C CNN
	1    4375 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 2775 4500 2775
Connection ~ 4375 2675
Wire Wire Line
	4500 2975 4125 2975
Wire Wire Line
	4125 2525 4125 2975
Wire Wire Line
	4125 3075 4500 3075
Connection ~ 4125 2975
Wire Wire Line
	5000 4375 5125 4375
Wire Wire Line
	5125 4375 5125 4475
$Comp
L crazy_circuits:GND #PWR03
U 1 1 5AF86C26
P 5125 5200
F 0 "#PWR03" H 5125 4950 50  0001 C CNN
F 1 "GND" H 5125 5050 50  0000 C CNN
F 2 "" H 5125 5200 50  0000 C CNN
F 3 "" H 5125 5200 50  0000 C CNN
	1    5125 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5075 5125 5075
Connection ~ 5125 5075
Wire Wire Line
	5000 4975 5125 4975
Connection ~ 5125 4975
Wire Wire Line
	5000 4875 5125 4875
Connection ~ 5125 4875
Wire Wire Line
	5000 4775 5125 4775
Connection ~ 5125 4775
Wire Wire Line
	5000 4675 5125 4675
Connection ~ 5125 4675
Wire Wire Line
	5000 4575 5125 4575
Connection ~ 5125 4575
Wire Wire Line
	5000 4475 5125 4475
Connection ~ 5125 4475
Wire Wire Line
	5000 2975 5575 2975
Wire Wire Line
	5000 3075 5575 3075
Wire Wire Line
	5000 3175 5575 3175
Text Label 5050 2975 0    50   ~ 0
IO8_SDA
Text Label 5050 3075 0    50   ~ 0
IO9_SCL
Text Label 5050 3175 0    50   ~ 0
IO7_GPCLK
Wire Wire Line
	4500 4275 4125 4275
Text Label 4200 4275 0    50   ~ 0
IO2
Wire Wire Line
	4500 3275 3925 3275
Text Label 4000 3275 0    50   ~ 0
IO12_MOSI
Wire Wire Line
	4500 3375 3925 3375
Wire Wire Line
	3925 3475 4500 3475
Wire Wire Line
	4500 3575 3925 3575
Wire Wire Line
	3925 3675 4500 3675
Text Label 4000 3375 0    50   ~ 0
IO13_MISO
Text Label 4000 3475 0    50   ~ 0
IO14_SCLK
Text Label 4000 3575 0    50   ~ 0
IO10_CS0
Text Label 4000 3675 0    50   ~ 0
IO11_CS1
Wire Wire Line
	5000 3375 5575 3375
Text Label 5050 3375 0    50   ~ 0
IO15_TXD
Text Label 5050 3475 0    50   ~ 0
IO16_RX
Wire Wire Line
	5000 3475 5575 3475
Wire Wire Line
	5000 3675 5575 3675
Text Label 5050 3675 0    50   ~ 0
IO1_PWM0
Wire Wire Line
	5000 3775 5575 3775
Wire Wire Line
	5000 3875 5575 3875
Text Label 5050 3775 0    50   ~ 0
IO26_PWM0
Text Label 5050 3875 0    50   ~ 0
IO23_PWM1
Wire Wire Line
	4500 4475 4125 4475
Wire Wire Line
	4500 4575 4125 4575
Wire Wire Line
	4500 4675 4125 4675
Wire Wire Line
	4500 4975 4125 4975
Text Label 4200 4475 0    50   ~ 0
IO4
Text Label 4200 4575 0    50   ~ 0
IO5
Text Label 4200 4675 0    50   ~ 0
IO6
Text Label 4200 4975 0    50   ~ 0
IO27
NoConn ~ 4500 5075
NoConn ~ 4500 4875
NoConn ~ 4500 4775
NoConn ~ 5000 4175
NoConn ~ 5000 4075
NoConn ~ 4500 4175
NoConn ~ 4500 4375
NoConn ~ 4500 3975
NoConn ~ 4500 3875
NoConn ~ 4500 3775
$Comp
L crazy_circuits:HEADER-FEMALE-20POS-TH-2x20-P0.1IN-RASPI J1
U 1 1 5AF88016
P 4750 3625
F 0 "J1" H 4650 4675 50  0000 L CNN
F 1 "RASPI" H 4650 2075 50  0000 L CNN
F 2 "Crazy_Circuits:RASPI-ZERO-7x11" H 4900 1975 50  0001 C CIN
F 3 "http://www.sullinscorp.com/drawings/78_P(N)PxCxxxLFBN-RC_10492-H.pdf" H 4750 3525 5   0001 C CNN
F 4 "HEADER FEMALE 20POS TH 2x20 0.1IN" H 4900 1975 50  0001 C CIN "Description"
F 5 "Sullins" H 4900 1975 50  0001 C CIN "MF_Name"
F 6 "PPPC102LFBN-RC" H 4900 1975 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4900 1975 50  0001 C CIN "S1_Name"
F 8 "S6106-ND" H 4900 1975 50  0001 C CIN "S1_PN"
	1    4750 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 2675 4375 2775
Wire Wire Line
	4125 2975 4125 3075
Wire Wire Line
	5125 5075 5125 5200
Wire Wire Line
	5125 4975 5125 5075
Wire Wire Line
	5125 4875 5125 4975
Wire Wire Line
	5125 4775 5125 4875
Wire Wire Line
	5125 4675 5125 4775
Wire Wire Line
	5125 4575 5125 4675
Wire Wire Line
	5125 4475 5125 4575
$EndSCHEMATC
