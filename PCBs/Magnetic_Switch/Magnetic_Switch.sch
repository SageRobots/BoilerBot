EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BoilerBot:SI7201-B-86-IV U1
U 1 1 60A09AFB
P 5850 3850
F 0 "U1" H 6028 3896 50  0000 L CNN
F 1 "SI7201-B-86-IV" H 6028 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 60A09FF1
P 5100 3850
F 0 "J1" H 5208 4131 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5208 4040 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF3EA-03P-2H_1x03-1MP_P2.00mm_Horizontal" H 5100 3850 50  0001 C CNN
F 3 "~" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3750 5650 3750
Wire Wire Line
	5650 3850 5300 3850
Wire Wire Line
	5300 3950 5650 3950
$EndSCHEMATC
