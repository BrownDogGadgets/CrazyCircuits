EESchema Schematic File Version 4
LIBS:crazy_circuits
LIBS:wickerlib
LIBS:3x4-CR2032-Coin-Cell-On-Off-Switch-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "3x4 CR2032 Coin Cell On/Off Switch"
Date "07 Aug 2018"
Rev "v1.2"
Comp "All rights reserved."
Comment1 "help@browndoggadgets.com"
Comment2 "http://browndoggadgets.com/"
Comment3 "Brown Dog Gadgets"
Comment4 ""
$EndDescr
$Comp
L crazy_circuits:VCC #PWR01
U 1 1 5B69DD4D
P 3950 3075
F 0 "#PWR01" H 3950 2925 50  0001 C CNN
F 1 "VCC" H 3950 3225 50  0000 C CNN
F 2 "" H 3950 3075 50  0000 C CNN
F 3 "" H 3950 3075 50  0000 C CNN
	1    3950 3075
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:GND #PWR02
U 1 1 5B69DE1F
P 4875 3925
F 0 "#PWR02" H 4875 3675 50  0001 C CNN
F 1 "GND" H 4875 3775 50  0000 C CNN
F 2 "" H 4875 3925 50  0000 C CNN
F 3 "" H 4875 3925 50  0000 C CNN
	1    4875 3925
	1    0    0    -1  
$EndComp
NoConn ~ 4200 3300
$Comp
L crazy_circuits:SWITCH-SLIDE-SPDT-200MA-30V-EG1218 S1
U 1 1 5B69E7DF
P 4350 3250
F 0 "S1" H 4350 3350 50  0000 L CNN
F 1 "ON/OFF" H 4350 3150 50  0000 L CNN
F 2 "" H 4350 2900 50  0001 C CIN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/119/EG.pdf" H 4350 3250 5   0001 C CNN
F 4 "SWITCH SLIDE SPDT 200MA 30V" H 4350 2900 50  0001 C CIN "Description"
F 5 "E-Switch" H 4350 2900 50  0001 C CIN "MF_Name"
F 6 "EG1218" H 4350 2900 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4350 2900 50  0001 C CIN "S1_Name"
F 8 "EG1903-ND" H 4350 2900 50  0001 C CIN "S1_PN"
F 9 "th" H 4350 3250 50  0001 C CNN "Type"
	1    4350 3250
	1    0    0    -1  
$EndComp
$Comp
L crazy_circuits:BATT-CR2023-SMT-BK-912 BT1
U 1 1 5B69F74C
P 4875 3625
F 0 "BT1" H 5000 3675 50  0000 L CNN
F 1 "BATT-CR2023-SMT-BK-912" H 5000 3575 50  0000 L CNN
F 2 "Crazy_Circuits:CR2032-ON-OFF-SWITCH-3x4" H 4875 3275 50  0001 C CIN
F 3 "" H 4875 3625 5   0001 C CNN
F 4 "HOLDER BATT COIN CR2032/20MM" H 4875 3275 50  0001 C CIN "Description"
F 5 "MPD" H 4875 3275 50  0001 C CIN "MF_Name"
F 6 "BK-912" H 4875 3275 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 4875 3275 50  0001 C CIN "S1_Name"
F 8 "BK-912-ND" H 4875 3275 50  0001 C CIN "S1_PN"
F 9 "smt" H 4875 3625 50  0001 C CNN "Type"
	1    4875 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3075 3950 3200
Wire Wire Line
	3950 3200 4200 3200
Wire Wire Line
	4875 3475 4875 3250
Wire Wire Line
	4875 3250 4550 3250
Wire Wire Line
	4875 3775 4875 3925
$EndSCHEMATC
