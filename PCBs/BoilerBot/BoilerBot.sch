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
L BoilerBot:SPARKFUN_PRO_MICRO A1
U 1 1 60A35611
P 5550 3850
F 0 "A1" H 5550 4665 50  0000 C CNN
F 1 "SPARKFUN_PRO_MICRO" H 5550 4574 50  0000 C CNN
F 2 "BoilerBot:SPARKFUN_PRO_MICRO" H 5550 4400 50  0001 C CNN
F 3 "" H 5550 4400 50  0001 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
Text GLabel 5200 3300 0    50   Input ~ 0
ENCA
Text GLabel 5200 3400 0    50   Input ~ 0
ENCB
Text GLabel 5200 3700 0    50   Input ~ 0
SDA
Text GLabel 5200 3800 0    50   Input ~ 0
SCL
Text GLabel 5200 3900 0    50   Input ~ 0
UP
Text GLabel 5200 4000 0    50   Input ~ 0
DOWN
Text GLabel 5200 4300 0    50   Input ~ 0
MOT1
Text GLabel 5200 4400 0    50   Input ~ 0
MOT2
Text GLabel 5200 4100 0    50   Input ~ 0
TEMP
Text GLabel 5900 4400 2    50   Input ~ 0
HEAT
Text GLabel 5200 4200 0    50   Input ~ 0
PB
Text GLabel 5900 4300 2    50   Input ~ 0
BUZZ
$Comp
L power:+5V #PWR0101
U 1 1 60A369AA
P 6250 3600
F 0 "#PWR0101" H 6250 3450 50  0001 C CNN
F 1 "+5V" H 6265 3773 50  0000 C CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3600 5900 3600
$Comp
L power:GND #PWR0102
U 1 1 60A37918
P 4800 3600
F 0 "#PWR0102" H 4800 3350 50  0001 C CNN
F 1 "GND" H 4805 3427 50  0000 C CNN
F 2 "" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3600 5200 3600
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 60A388DD
P 3650 3200
F 0 "J3" H 3730 3242 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 3730 3151 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 3650 3200 50  0001 C CNN
F 3 "~" H 3650 3200 50  0001 C CNN
	1    3650 3200
	1    0    0    -1  
$EndComp
Text GLabel 3450 3100 0    50   Input ~ 0
L
Text GLabel 3450 3200 0    50   Input ~ 0
N
$Comp
L power:GND #PWR0103
U 1 1 60A38B35
P 3450 3300
F 0 "#PWR0103" H 3450 3050 50  0001 C CNN
F 1 "GND" H 3455 3127 50  0000 C CNN
F 2 "" H 3450 3300 50  0001 C CNN
F 3 "" H 3450 3300 50  0001 C CNN
	1    3450 3300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-5.0 U1
U 1 1 60A39BC9
P 3750 4100
F 0 "U1" H 3750 4342 50  0000 C CNN
F 1 "AZ1117-5.0" H 3750 4251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3750 4350 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 3750 4100 50  0001 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60A3A32A
P 2600 3700
F 0 "J1" H 2680 3692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2680 3601 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 2600 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 60A3AB8A
P 2400 3700
F 0 "#PWR0104" H 2400 3550 50  0001 C CNN
F 1 "+12V" H 2415 3873 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60A3ACDB
P 2400 3800
F 0 "#PWR0105" H 2400 3550 50  0001 C CNN
F 1 "GND" H 2405 3627 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60A3B45D
P 3750 4400
F 0 "#PWR0106" H 3750 4150 50  0001 C CNN
F 1 "GND" H 3755 4227 50  0000 C CNN
F 2 "" H 3750 4400 50  0001 C CNN
F 3 "" H 3750 4400 50  0001 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60A3BCD5
P 3250 4250
F 0 "C1" H 3365 4296 50  0000 L CNN
F 1 "22u" H 3365 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 4100 50  0001 C CNN
F 3 "~" H 3250 4250 50  0001 C CNN
	1    3250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 60A3C107
P 3250 4100
F 0 "#PWR0107" H 3250 3950 50  0001 C CNN
F 1 "+12V" H 3265 4273 50  0000 C CNN
F 2 "" H 3250 4100 50  0001 C CNN
F 3 "" H 3250 4100 50  0001 C CNN
	1    3250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4100 3450 4100
Connection ~ 3250 4100
Wire Wire Line
	3250 4400 3750 4400
Connection ~ 3750 4400
$Comp
L power:+5V #PWR0108
U 1 1 60A3CA85
P 4100 4100
F 0 "#PWR0108" H 4100 3950 50  0001 C CNN
F 1 "+5V" H 4115 4273 50  0000 C CNN
F 2 "" H 4100 4100 50  0001 C CNN
F 3 "" H 4100 4100 50  0001 C CNN
	1    4100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4100 4050 4100
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 60A3E6B1
P 3650 2600
F 0 "J2" H 3730 2642 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 3730 2551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 3650 2600 50  0001 C CNN
F 3 "~" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
Text GLabel 3450 2500 0    50   Input ~ 0
L
Text GLabel 3450 2600 0    50   Input ~ 0
N
$Comp
L power:GND #PWR0109
U 1 1 60A3E6B9
P 3450 2700
F 0 "#PWR0109" H 3450 2450 50  0001 C CNN
F 1 "GND" H 3455 2527 50  0000 C CNN
F 2 "" H 3450 2700 50  0001 C CNN
F 3 "" H 3450 2700 50  0001 C CNN
	1    3450 2700
	1    0    0    -1  
$EndComp
$Comp
L BoilerBot:TB67H451FNG,EL U2
U 1 1 60A3F0F5
P 3800 5500
F 0 "U2" H 3800 5915 50  0000 C CNN
F 1 "TB67H451FNG,EL" H 3800 5824 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm_ThermalVias" H 3800 5500 50  0001 C CNN
F 3 "" H 3800 5500 50  0001 C CNN
	1    3800 5500
	1    0    0    -1  
$EndComp
Text GLabel 3450 5550 0    50   Input ~ 0
MOT1
Text GLabel 3450 5450 0    50   Input ~ 0
MOT2
$Comp
L power:GND #PWR0110
U 1 1 60A40A03
P 3800 5850
F 0 "#PWR0110" H 3800 5600 50  0001 C CNN
F 1 "GND" H 3805 5677 50  0000 C CNN
F 2 "" H 3800 5850 50  0001 C CNN
F 3 "" H 3800 5850 50  0001 C CNN
	1    3800 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 60A410B9
P 3000 5350
F 0 "#PWR0111" H 3000 5100 50  0001 C CNN
F 1 "GND" H 3005 5177 50  0000 C CNN
F 2 "" H 3000 5350 50  0001 C CNN
F 3 "" H 3000 5350 50  0001 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5350 3450 5350
$Comp
L Device:R R1
U 1 1 60A41B8B
P 2400 5450
F 0 "R1" H 2470 5496 50  0000 L CNN
F 1 "3.3K" H 2470 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2330 5450 50  0001 C CNN
F 3 "~" H 2400 5450 50  0001 C CNN
	1    2400 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60A41FC0
P 2400 5850
F 0 "R2" H 2470 5896 50  0000 L CNN
F 1 "2.2K" H 2470 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2330 5850 50  0001 C CNN
F 3 "~" H 2400 5850 50  0001 C CNN
	1    2400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5650 2400 5650
Wire Wire Line
	2400 5650 2400 5700
Wire Wire Line
	2400 5600 2400 5650
Connection ~ 2400 5650
$Comp
L power:+5V #PWR0112
U 1 1 60A42B71
P 2400 5300
F 0 "#PWR0112" H 2400 5150 50  0001 C CNN
F 1 "+5V" H 2415 5473 50  0000 C CNN
F 2 "" H 2400 5300 50  0001 C CNN
F 3 "" H 2400 5300 50  0001 C CNN
	1    2400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60A43508
P 2400 6000
F 0 "#PWR0113" H 2400 5750 50  0001 C CNN
F 1 "GND" H 2405 5827 50  0000 C CNN
F 2 "" H 2400 6000 50  0001 C CNN
F 3 "" H 2400 6000 50  0001 C CNN
	1    2400 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60A439CE
P 5300 5900
F 0 "R3" H 5370 5946 50  0000 L CNN
F 1 "0.1" H 5370 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5230 5900 50  0001 C CNN
F 3 "~" H 5300 5900 50  0001 C CNN
	1    5300 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60A44AA5
P 5300 6050
F 0 "#PWR0114" H 5300 5800 50  0001 C CNN
F 1 "GND" H 5305 5877 50  0000 C CNN
F 2 "" H 5300 6050 50  0001 C CNN
F 3 "" H 5300 6050 50  0001 C CNN
	1    5300 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 60A453A4
P 4550 5900
F 0 "C3" H 4668 5946 50  0000 L CNN
F 1 "100U" H 4668 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4588 5750 50  0001 C CNN
F 3 "~" H 4550 5900 50  0001 C CNN
	1    4550 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 60A45FD9
P 4550 5750
F 0 "#PWR0115" H 4550 5600 50  0001 C CNN
F 1 "+12V" H 4565 5923 50  0000 C CNN
F 2 "" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5750 4150 5650
$Comp
L power:GND #PWR0116
U 1 1 60A47A6A
P 4550 6050
F 0 "#PWR0116" H 4550 5800 50  0001 C CNN
F 1 "GND" H 4555 5877 50  0000 C CNN
F 2 "" H 4550 6050 50  0001 C CNN
F 3 "" H 4550 6050 50  0001 C CNN
	1    4550 6050
	1    0    0    -1  
$EndComp
Text GLabel 4150 5450 2    50   Input ~ 0
RS
$Comp
L Device:C C2
U 1 1 60A491D2
P 4150 5900
F 0 "C2" H 4265 5946 50  0000 L CNN
F 1 "0.1U" H 4265 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4188 5750 50  0001 C CNN
F 3 "~" H 4150 5900 50  0001 C CNN
	1    4150 5900
	1    0    0    -1  
$EndComp
Connection ~ 4150 5750
Wire Wire Line
	4150 5750 4550 5750
Connection ~ 4550 5750
Wire Wire Line
	4150 6050 4550 6050
Connection ~ 4550 6050
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60A4B537
P 4700 5350
F 0 "J4" H 4780 5342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4780 5251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 4700 5350 50  0001 C CNN
F 3 "~" H 4700 5350 50  0001 C CNN
	1    4700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5350 4500 5350
Wire Wire Line
	4500 5450 4400 5450
Wire Wire Line
	4400 5450 4400 5550
Wire Wire Line
	4400 5550 4150 5550
Text GLabel 5150 5750 0    50   Input ~ 0
RS
Wire Wire Line
	5150 5750 5300 5750
$Comp
L power:GND #PWR0117
U 1 1 60A4F49F
P 7900 3900
F 0 "#PWR0117" H 7900 3650 50  0001 C CNN
F 1 "GND" H 7905 3727 50  0000 C CNN
F 2 "" H 7900 3900 50  0001 C CNN
F 3 "" H 7900 3900 50  0001 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 60A4F68E
P 8250 3600
F 0 "#PWR0118" H 8250 3450 50  0001 C CNN
F 1 "+5V" H 8265 3773 50  0000 C CNN
F 2 "" H 8250 3600 50  0001 C CNN
F 3 "" H 8250 3600 50  0001 C CNN
	1    8250 3600
	1    0    0    -1  
$EndComp
Text GLabel 7900 3700 2    50   Input ~ 0
SDA
Text GLabel 7900 3800 2    50   Input ~ 0
SCL
$Comp
L Connector:Conn_01x05_Male J5
U 1 1 60A516AA
P 7150 4600
F 0 "J5" H 7258 4981 50  0000 C CNN
F 1 "Conn_01x05_Male" H 7258 4890 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B5B-PH-K_1x05_P2.00mm_Vertical" H 7150 4600 50  0001 C CNN
F 3 "~" H 7150 4600 50  0001 C CNN
	1    7150 4600
	1    0    0    -1  
$EndComp
Text GLabel 7350 4700 2    50   Input ~ 0
PB
$Comp
L power:+5V #PWR0119
U 1 1 60A51BDB
P 7850 4800
F 0 "#PWR0119" H 7850 4650 50  0001 C CNN
F 1 "+5V" H 7865 4973 50  0000 C CNN
F 2 "" H 7850 4800 50  0001 C CNN
F 3 "" H 7850 4800 50  0001 C CNN
	1    7850 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60A52125
P 7700 4400
F 0 "#PWR0120" H 7700 4150 50  0001 C CNN
F 1 "GND" H 7705 4227 50  0000 C CNN
F 2 "" H 7700 4400 50  0001 C CNN
F 3 "" H 7700 4400 50  0001 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
Text GLabel 7350 4600 2    50   Input ~ 0
ENCA
Text GLabel 7350 4500 2    50   Input ~ 0
ENCB
Wire Wire Line
	7700 4400 7350 4400
Wire Wire Line
	7850 4800 7350 4800
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60A54DD2
P 7150 5250
F 0 "J6" H 7258 5531 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7258 5440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7150 5250 50  0001 C CNN
F 3 "~" H 7150 5250 50  0001 C CNN
	1    7150 5250
	1    0    0    -1  
$EndComp
Text GLabel 7350 5250 2    50   Input ~ 0
UP
$Comp
L power:+5V #PWR0121
U 1 1 60A55CB9
P 7700 5150
F 0 "#PWR0121" H 7700 5000 50  0001 C CNN
F 1 "+5V" H 7715 5323 50  0000 C CNN
F 2 "" H 7700 5150 50  0001 C CNN
F 3 "" H 7700 5150 50  0001 C CNN
	1    7700 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 60A56078
P 7700 5350
F 0 "#PWR0122" H 7700 5100 50  0001 C CNN
F 1 "GND" H 7705 5177 50  0000 C CNN
F 2 "" H 7700 5350 50  0001 C CNN
F 3 "" H 7700 5350 50  0001 C CNN
	1    7700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5350 7350 5350
Wire Wire Line
	7350 5150 7700 5150
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 60A59D31
P 8150 5300
F 0 "J10" H 8258 5581 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8258 5490 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 8150 5300 50  0001 C CNN
F 3 "~" H 8150 5300 50  0001 C CNN
	1    8150 5300
	1    0    0    -1  
$EndComp
Text GLabel 8350 5300 2    50   Input ~ 0
DOWN
$Comp
L power:+5V #PWR0123
U 1 1 60A59D38
P 8700 5200
F 0 "#PWR0123" H 8700 5050 50  0001 C CNN
F 1 "+5V" H 8715 5373 50  0000 C CNN
F 2 "" H 8700 5200 50  0001 C CNN
F 3 "" H 8700 5200 50  0001 C CNN
	1    8700 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 60A59D3E
P 8700 5400
F 0 "#PWR0124" H 8700 5150 50  0001 C CNN
F 1 "GND" H 8705 5227 50  0000 C CNN
F 2 "" H 8700 5400 50  0001 C CNN
F 3 "" H 8700 5400 50  0001 C CNN
	1    8700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5400 8350 5400
Wire Wire Line
	8350 5200 8700 5200
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 60A5ADD1
P 7700 3700
F 0 "J9" H 7808 3981 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7808 3890 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 7700 3700 50  0001 C CNN
F 3 "~" H 7700 3700 50  0001 C CNN
	1    7700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3600 7900 3600
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60A5E641
P 7200 6000
F 0 "J7" H 7308 6281 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7308 6190 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7200 6000 50  0001 C CNN
F 3 "~" H 7200 6000 50  0001 C CNN
	1    7200 6000
	1    0    0    -1  
$EndComp
Text GLabel 8100 6000 2    50   Input ~ 0
TEMP
$Comp
L power:+5V #PWR0125
U 1 1 60A5E648
P 7900 5700
F 0 "#PWR0125" H 7900 5550 50  0001 C CNN
F 1 "+5V" H 7915 5873 50  0000 C CNN
F 2 "" H 7900 5700 50  0001 C CNN
F 3 "" H 7900 5700 50  0001 C CNN
	1    7900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 60A5E64E
P 7750 6100
F 0 "#PWR0126" H 7750 5850 50  0001 C CNN
F 1 "GND" H 7755 5927 50  0000 C CNN
F 2 "" H 7750 6100 50  0001 C CNN
F 3 "" H 7750 6100 50  0001 C CNN
	1    7750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6100 7400 6100
Wire Wire Line
	7400 5900 7750 5900
$Comp
L Device:R R4
U 1 1 60A5EAC2
P 7900 5850
F 0 "R4" H 7970 5896 50  0000 L CNN
F 1 "4.7K" H 7970 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7830 5850 50  0001 C CNN
F 3 "~" H 7900 5850 50  0001 C CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5700 7750 5700
Wire Wire Line
	7750 5700 7750 5900
Connection ~ 7900 5700
Wire Wire Line
	8100 6000 7900 6000
Connection ~ 7900 6000
Wire Wire Line
	7900 6000 7400 6000
$Comp
L dk_Alarms-Buzzers-and-Sirens:PS1240P02BT BZ1
U 1 1 60A615C7
P 4400 6950
F 0 "BZ1" H 4740 7048 60  0000 L CNN
F 1 "PS1240P02BT" H 4740 6942 60  0000 L CNN
F 2 "BoilerBot:PUI_AT-1224-TWT-5V-2-R" H 4600 7150 60  0001 L CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/piezoelectronic_buzzer_ps_en.pdf" H 4600 7250 60  0001 L CNN
F 4 "445-2525-1-ND" H 4600 7350 60  0001 L CNN "Digi-Key_PN"
F 5 "PS1240P02BT" H 4600 7450 60  0001 L CNN "MPN"
F 6 "Audio Products" H 4600 7550 60  0001 L CNN "Category"
F 7 "Alarms, Buzzers, and Sirens" H 4600 7650 60  0001 L CNN "Family"
F 8 "https://product.tdk.com/info/en/catalog/datasheets/piezoelectronic_buzzer_ps_en.pdf" H 4600 7750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/tdk-corporation/PS1240P02BT/445-2525-1-ND/935930" H 4600 7850 60  0001 L CNN "DK_Detail_Page"
F 10 "AUDIO PIEZO TRANSDUCER 30V TH" H 4600 7950 60  0001 L CNN "Description"
F 11 "TDK Corporation" H 4600 8050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4600 8150 60  0001 L CNN "Status"
	1    4400 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 60A6495B
P 4300 7400
F 0 "#PWR0127" H 4300 7150 50  0001 C CNN
F 1 "GND" H 4305 7227 50  0000 C CNN
F 2 "" H 4300 7400 50  0001 C CNN
F 3 "" H 4300 7400 50  0001 C CNN
	1    4300 7400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 60A66144
P 4200 7200
F 0 "Q1" H 4404 7246 50  0000 L CNN
F 1 "2N7002" H 4404 7155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4400 7125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4200 7200 50  0001 L CNN
	1    4200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6950 4300 7000
$Comp
L power:+5V #PWR0128
U 1 1 60A6B6C6
P 4300 6850
F 0 "#PWR0128" H 4300 6700 50  0001 C CNN
F 1 "+5V" H 4315 7023 50  0000 C CNN
F 2 "" H 4300 6850 50  0001 C CNN
F 3 "" H 4300 6850 50  0001 C CNN
	1    4300 6850
	1    0    0    -1  
$EndComp
Text GLabel 4000 7200 0    50   Input ~ 0
BUZZ
$Comp
L power:GND #PWR0129
U 1 1 60A7000A
P 6050 2550
F 0 "#PWR0129" H 6050 2300 50  0001 C CNN
F 1 "GND" H 6055 2377 50  0000 C CNN
F 2 "" H 6050 2550 50  0001 C CNN
F 3 "" H 6050 2550 50  0001 C CNN
	1    6050 2550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 60A70010
P 5950 2350
F 0 "Q2" H 6154 2396 50  0000 L CNN
F 1 "2N7002" H 6154 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6150 2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5950 2350 50  0001 L CNN
	1    5950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 60A70017
P 6050 1550
F 0 "#PWR0130" H 6050 1400 50  0001 C CNN
F 1 "+5V" H 6065 1723 50  0000 C CNN
F 2 "" H 6050 1550 50  0001 C CNN
F 3 "" H 6050 1550 50  0001 C CNN
	1    6050 1550
	1    0    0    -1  
$EndComp
$Comp
L Relay:ADW11 K1
U 1 1 60A7181A
P 6250 1850
F 0 "K1" H 6680 1896 50  0000 L CNN
F 1 "ADW11" H 6680 1805 50  0000 L CNN
F 2 "Relay_THT:Relay_1P1T_NO_10x24x18.8mm_Panasonic_ADW11xxxxW_THT" H 7575 1800 50  0001 C CNN
F 3 "https://www.panasonic-electric-works.com/pew/es/downloads/ds_dw_hl_en.pdf" H 6250 1850 50  0001 C CNN
	1    6250 1850
	1    0    0    -1  
$EndComp
Text GLabel 5750 2350 0    50   Input ~ 0
HEAT
Text GLabel 6450 2150 2    50   Input ~ 0
L
Text GLabel 6550 1550 2    50   Input ~ 0
LA
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 60A76B57
P 7550 1900
F 0 "J8" H 7630 1942 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 7630 1851 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 7550 1900 50  0001 C CNN
F 3 "~" H 7550 1900 50  0001 C CNN
	1    7550 1900
	1    0    0    -1  
$EndComp
Text GLabel 7350 1900 0    50   Input ~ 0
N
$Comp
L power:GND #PWR0131
U 1 1 60A76B5F
P 7350 2000
F 0 "#PWR0131" H 7350 1750 50  0001 C CNN
F 1 "GND" H 7355 1827 50  0000 C CNN
F 2 "" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
Text GLabel 7350 1800 0    50   Input ~ 0
LA
$EndSCHEMATC
