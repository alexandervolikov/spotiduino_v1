EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Sportiduino Base Station"
Date "2020-03-23"
Rev "3"
Comp "Sportiduino"
Comment1 "I2C EEPROM"
Comment2 "Reed switch"
Comment3 "Big Program connector"
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 D1
U 1 1 5BE42948
P 2050 1000
F 0 "D1" H 2050 1242 50  0000 C CNN
F 1 "MCP1700-3302E" H 2050 1151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2050 1225 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826C.pdf" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BE42D9E
P 1450 1250
F 0 "C2" H 1565 1296 50  0000 L CNN
F 1 "4.7 uF" H 1500 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1488 1100 50  0001 C CNN
F 3 "~" H 1450 1250 50  0001 C CNN
	1    1450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BE42E09
P 2650 1250
F 0 "C3" H 2765 1296 50  0000 L CNN
F 1 "4.7 uF" H 2700 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 1100 50  0001 C CNN
F 3 "~" H 2650 1250 50  0001 C CNN
	1    2650 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 X1
U 1 1 5BE42F8E
P 800 1000
F 0 "X1" H 800 1150 50  0000 C CNN
F 1 "Battery" H 800 750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 1000 50  0001 C CNN
F 3 "~" H 800 1000 50  0001 C CNN
	1    800  1000
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR02
U 1 1 5BE5464C
P 1450 1000
F 0 "#PWR02" H 1450 850 50  0001 C CNN
F 1 "+BATT" H 1450 1150 50  0000 C CNN
F 2 "" H 1450 1000 50  0001 C CNN
F 3 "" H 1450 1000 50  0001 C CNN
	1    1450 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 5BE54AB0
P 2650 1000
F 0 "#PWR04" H 2650 850 50  0001 C CNN
F 1 "+3V3" H 2650 1150 50  0000 C CNN
F 2 "" H 2650 1000 50  0001 C CNN
F 3 "" H 2650 1000 50  0001 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS3231M D3
U 1 1 5BE583D9
P 9350 3600
F 0 "D3" H 9700 3950 50  0000 C CNN
F 1 "DS3231SN" H 9600 3200 50  0000 C CNN
F 2 "Sportiduino:SOIC-16W_7.5x10.3mm_P1.27mm" H 9350 3000 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 9620 3650 50  0001 C CNN
	1    9350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BE590B1
P 6900 3200
F 0 "R1" H 6970 3246 50  0000 L CNN
F 1 "10K" H 6970 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BE5914C
P 7200 3200
F 0 "R3" H 7270 3246 50  0000 L CNN
F 1 "10K" H 7270 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 3200 50  0001 C CNN
F 3 "~" H 7200 3200 50  0001 C CNN
	1    7200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 5BE59E43
P 7500 2850
F 0 "#PWR012" H 7500 2700 50  0001 C CNN
F 1 "+3V3" H 7650 2900 50  0000 C CNN
F 2 "" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR019
U 1 1 5BE5A054
P 9350 4100
F 0 "#PWR019" H 9350 3850 50  0001 C CNN
F 1 "GNDD" H 9354 3945 50  0001 C CNN
F 2 "" H 9350 4100 50  0001 C CNN
F 3 "" H 9350 4100 50  0001 C CNN
	1    9350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR020
U 1 1 5BE5BF4B
P 9550 3100
F 0 "#PWR020" H 9550 2850 50  0001 C CNN
F 1 "GNDD" H 9554 2945 50  0001 C CNN
F 2 "" H 9550 3100 50  0001 C CNN
F 3 "" H 9550 3100 50  0001 C CNN
	1    9550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BE5CB0E
P 6900 5500
F 0 "R2" H 6830 5454 50  0000 R CNN
F 1 "100" H 6830 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 5500 50  0001 C CNN
F 3 "~" H 6900 5500 50  0001 C CNN
	1    6900 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED VD1
U 1 1 5BE5D06F
P 6900 5900
F 0 "VD1" V 7000 5850 50  0000 R CNN
F 1 "3mm" H 6847 5783 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6900 5900 50  0001 C CNN
F 3 "~" H 6900 5900 50  0001 C CNN
	1    6900 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 5BE5DAA9
P 6900 6150
F 0 "#PWR010" H 6900 5900 50  0001 C CNN
F 1 "GNDD" H 6904 5995 50  0001 C CNN
F 2 "" H 6900 6150 50  0001 C CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5BE5F766
P 7900 5300
F 0 "BZ1" H 8053 5329 50  0000 L CNN
F 1 "TR1205Y" H 8053 5238 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_ProSignal_ABT-410-RC" V 7875 5400 50  0001 C CNN
F 3 "~" V 7875 5400 50  0001 C CNN
	1    7900 5300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 VT1
U 1 1 5BE5F867
P 7700 5700
F 0 "VT1" H 7905 5746 50  0000 L CNN
F 1 "BSS138" H 7905 5655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7900 5625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 7700 5700 50  0001 L CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BE5F975
P 7200 5500
F 0 "R4" H 7130 5454 50  0000 R CNN
F 1 "3K3" H 7130 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5BE5F9EF
P 7200 5900
F 0 "R5" H 7130 5854 50  0000 R CNN
F 1 "33K" H 7130 5945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 5900 50  0001 C CNN
F 3 "~" H 7200 5900 50  0001 C CNN
	1    7200 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 5BE5FABC
P 7200 6150
F 0 "#PWR011" H 7200 5900 50  0001 C CNN
F 1 "GNDD" H 7204 5995 50  0001 C CNN
F 2 "" H 7200 6150 50  0001 C CNN
F 3 "" H 7200 6150 50  0001 C CNN
	1    7200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR015
U 1 1 5BE5FAE7
P 7800 6150
F 0 "#PWR015" H 7800 5900 50  0001 C CNN
F 1 "GNDD" H 7804 5995 50  0001 C CNN
F 2 "" H 7800 6150 50  0001 C CNN
F 3 "" H 7800 6150 50  0001 C CNN
	1    7800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR014
U 1 1 5BE61C67
P 7800 5050
F 0 "#PWR014" H 7800 4900 50  0001 C CNN
F 1 "+BATT" H 7950 5100 50  0000 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 5BE69A59
P 5550 5450
F 0 "#PWR09" H 5550 5200 50  0001 C CNN
F 1 "GNDD" H 5554 5295 50  0001 C CNN
F 2 "" H 5550 5450 50  0001 C CNN
F 3 "" H 5550 5450 50  0001 C CNN
	1    5550 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BE6BA92
P 7500 3200
F 0 "R6" H 7570 3246 50  0000 L CNN
F 1 "33K" H 7570 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 3200 50  0001 C CNN
F 3 "~" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BE71484
P 4100 2350
F 0 "C6" H 4215 2396 50  0000 L CNN
F 1 "100 nF" H 4150 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4138 2200 50  0001 C CNN
F 3 "~" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BE7C1F3
P 6100 1500
F 0 "C5" H 6215 1546 50  0000 L CNN
F 1 "100 nF" H 6150 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6138 1350 50  0001 C CNN
F 3 "~" H 6100 1500 50  0001 C CNN
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5BE7CE78
P 5000 1500
F 0 "C4" H 5115 1546 50  0000 L CNN
F 1 "100 nF" H 5050 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 1350 50  0001 C CNN
F 3 "~" H 5000 1500 50  0001 C CNN
	1    5000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5BE86586
P 4100 2700
F 0 "#PWR08" H 4100 2450 50  0001 C CNN
F 1 "GNDD" H 4104 2545 50  0001 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 X3
U 1 1 5BE910CC
P 11000 1200
F 0 "X3" H 11000 1600 50  0000 C CNN
F 1 "RC522" H 11000 700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 11000 1200 50  0001 C CNN
F 3 "~" H 11000 1200 50  0001 C CNN
	1    11000 1200
	1    0    0    -1  
$EndComp
Text Label 10000 900  0    50   ~ 0
PB2
Entry Wire Line
	7900 2600 8000 2500
Entry Wire Line
	7900 2500 8000 2400
Entry Wire Line
	7900 2400 8000 2300
Entry Wire Line
	7900 2300 8000 2200
Entry Wire Line
	9850 1400 9950 1500
Entry Wire Line
	9850 1100 9950 1200
Entry Wire Line
	9850 1000 9950 1100
Entry Wire Line
	9850 900  9950 1000
Entry Wire Line
	9850 800  9950 900 
Text Label 7850 2600 2    50   ~ 0
PB5
Text Label 7850 2500 2    50   ~ 0
PB4
Text Label 7850 2400 2    50   ~ 0
PB3
Text Label 7850 2300 2    50   ~ 0
PB2
Text Label 7850 2200 2    50   ~ 0
PB1
Text Label 10000 1000 0    50   ~ 0
PB5
Text Label 10000 1100 0    50   ~ 0
PB3
Text Label 10000 1200 0    50   ~ 0
PB4
$Comp
L power:GNDD #PWR022
U 1 1 5BED2BDD
P 10550 2050
F 0 "#PWR022" H 10550 1800 50  0001 C CNN
F 1 "GNDD" H 10554 1895 50  0001 C CNN
F 2 "" H 10550 2050 50  0001 C CNN
F 3 "" H 10550 2050 50  0001 C CNN
	1    10550 2050
	1    0    0    -1  
$EndComp
Text Label 10000 1500 0    50   ~ 0
PB1
$Comp
L power:+3V3 #PWR023
U 1 1 5BED97EE
P 10800 2050
F 0 "#PWR023" H 10800 1900 50  0001 C CNN
F 1 "+3V3" H 10650 2100 50  0000 C CNN
F 2 "" H 10800 2050 50  0001 C CNN
F 3 "" H 10800 2050 50  0001 C CNN
	1    10800 2050
	-1   0    0    1   
$EndComp
Text GLabel 6200 3800 2    50   Input ~ 0
RX
Text GLabel 6200 3900 2    50   Input ~ 0
TX
Text GLabel 7700 3600 2    50   Input ~ 0
RST
Text Notes 10750 1500 2    50   ~ 0
RST
Text Notes 10750 1400 2    50   ~ 0
GND
Text Notes 10750 1300 2    50   ~ 0
IRQ
Text Notes 10750 1200 2    50   ~ 0
MISO
Text Notes 10750 1100 2    50   ~ 0
MOSI
Text Notes 10750 1000 2    50   ~ 0
SCK
Text Notes 10750 900  2    50   ~ 0
SDA
Text Notes 10750 1600 2    50   ~ 0
3V3
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU D2
U 1 1 5BE4287E
P 5550 3300
F 0 "D2" H 5900 4800 50  0000 C CNN
F 1 "ATmega328P-AU" H 5950 1800 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5550 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5550 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR07
U 1 1 5BF6300E
P 5000 1650
F 0 "#PWR07" H 5000 1400 50  0001 C CNN
F 1 "GNDD" H 5004 1495 50  0001 C CNN
F 2 "" H 5000 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0001 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 5BF703EE
P 2050 1600
F 0 "#PWR03" H 2050 1350 50  0001 C CNN
F 1 "GNDD" H 2054 1445 50  0001 C CNN
F 2 "" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
Entry Wire Line
	9850 1200 9950 1300
Text GLabel 6200 3200 2    50   Input ~ 0
ALARM
Text GLabel 10600 3700 2    50   Input ~ 0
ALARM
Text Label 10000 1300 0    50   ~ 0
PB0
$Comp
L Device:C C9
U 1 1 5C2396EF
P 9550 2900
F 0 "C9" H 9665 2946 50  0000 L CNN
F 1 "100 nF" H 9600 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9588 2750 50  0001 C CNN
F 3 "~" H 9550 2900 50  0001 C CNN
	1    9550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR018
U 1 1 5C27F227
P 10000 2700
F 0 "#PWR018" H 10000 2550 50  0001 C CNN
F 1 "+3V3" H 10000 2850 50  0000 C CNN
F 2 "" H 10000 2700 50  0001 C CNN
F 3 "" H 10000 2700 50  0001 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
Text GLabel 6200 4400 2    50   Input ~ 0
PD6
Text Label 7750 3400 0    50   ~ 0
SCL
Text Label 7750 3500 0    50   ~ 0
SDA
Text GLabel 6200 4300 2    50   Input ~ 0
32K
Text GLabel 10100 3400 2    50   Input ~ 0
32K
$Comp
L Device:C C8
U 1 1 5DDE2977
P 8950 2900
F 0 "C8" H 9065 2946 50  0000 L CNN
F 1 "100 nF" H 8650 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8988 2750 50  0001 C CNN
F 3 "~" H 8950 2900 50  0001 C CNN
	1    8950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 5DDF3F7C
P 8950 3100
F 0 "#PWR017" H 8950 2850 50  0001 C CNN
F 1 "GNDD" H 8954 2945 50  0001 C CNN
F 2 "" H 8950 3100 50  0001 C CNN
F 3 "" H 8950 3100 50  0001 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
Text Label 6200 4200 0    50   ~ 0
LED
Text Label 6200 4100 0    50   ~ 0
BUZ
$Comp
L Device:R R9
U 1 1 5DE0AEEA
P 2300 6350
F 0 "R9" H 2230 6304 50  0000 R CNN
F 1 "270K" H 2230 6395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 6350 50  0001 C CNN
F 3 "~" H 2300 6350 50  0001 C CNN
	1    2300 6350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5DE0AF80
P 2300 6750
F 0 "R10" H 2230 6704 50  0000 R CNN
F 1 "68K" H 2230 6795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 6750 50  0001 C CNN
F 3 "~" H 2300 6750 50  0001 C CNN
	1    2300 6750
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 5DE0B722
P 2300 6050
F 0 "#PWR021" H 2300 5900 50  0001 C CNN
F 1 "+BATT" H 2450 6100 50  0000 C CNN
F 2 "" H 2300 6050 50  0001 C CNN
F 3 "" H 2300 6050 50  0001 C CNN
	1    2300 6050
	1    0    0    -1  
$EndComp
Text GLabel 2900 6550 2    50   Input ~ 0
ADCIN
Text GLabel 2900 7000 2    50   Input ~ 0
ADCEN
Text GLabel 6200 3000 2    50   Input ~ 0
ADCIN
Text GLabel 6200 3100 2    50   Input ~ 0
ADCEN
$Comp
L Device:C C7
U 1 1 5DE748CD
P 1850 6750
F 0 "C7" H 1965 6796 50  0000 L CNN
F 1 "100 nF" H 1900 6650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1888 6600 50  0001 C CNN
F 3 "~" H 1850 6750 50  0001 C CNN
	1    1850 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5DDE894C
P 6200 2700
F 0 "TP4" V 6200 2888 50  0000 L CNN
F 1 "TestPoint" H 6245 2888 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 6400 2700 50  0001 C CNN
F 3 "~" H 6400 2700 50  0001 C CNN
	1    6200 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5DDEAC93
P 6200 2800
F 0 "TP5" V 6200 2988 50  0000 L CNN
F 1 "TestPoint" H 6245 2988 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 6400 2800 50  0001 C CNN
F 3 "~" H 6400 2800 50  0001 C CNN
	1    6200 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DE49114
P 4900 2400
F 0 "TP2" V 4900 2600 50  0000 L CNN
F 1 "TestPoint" H 4750 2400 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 5100 2400 50  0001 C CNN
F 3 "~" H 5100 2400 50  0001 C CNN
	1    4900 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 5DE79F85
P 8950 2550
F 0 "#PWR016" H 8950 2300 50  0001 C CNN
F 1 "GNDD" H 8954 2395 50  0001 C CNN
F 2 "" H 8950 2550 50  0001 C CNN
F 3 "" H 8950 2550 50  0001 C CNN
	1    8950 2550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 5DEB3AB0
P 8950 2300
F 0 "JP2" V 9050 2150 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 8950 2414 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 8950 2300 50  0001 C CNN
F 3 "~" H 8950 2300 50  0001 C CNN
	1    8950 2300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even X2
U 1 1 5DF114EE
P 2000 3700
F 0 "X2" H 2050 4000 50  0000 C CNN
F 1 "Prog" H 2050 3400 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 2000 3700 50  0001 C CNN
F 3 "~" H 2000 3700 50  0001 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR01
U 1 1 5DF12B3C
P 1450 3350
F 0 "#PWR01" H 1450 3100 50  0001 C CNN
F 1 "GNDD" H 1454 3195 50  0001 C CNN
F 2 "" H 1450 3350 50  0001 C CNN
F 3 "" H 1450 3350 50  0001 C CNN
	1    1450 3350
	1    0    0    -1  
$EndComp
Text GLabel 2850 3150 1    50   Input ~ 0
RST
Text GLabel 2800 3700 2    50   Input ~ 0
RX
Text GLabel 1600 3700 0    50   Input ~ 0
TX
$Comp
L Device:C C1
U 1 1 5DF1E05D
P 2850 3400
F 0 "C1" H 2900 3500 50  0000 L CNN
F 1 "100 nF" H 2900 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2888 3250 50  0001 C CNN
F 3 "~" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
Text GLabel 2800 3900 2    50   Input ~ 0
PB3
Text GLabel 1600 3900 0    50   Input ~ 0
PB4
Text GLabel 2800 3800 2    50   Input ~ 0
PB5
Text Notes 1800 3700 2    50   ~ 0
RX
Text Notes 1800 3800 2    50   ~ 0
RST
Text Notes 2300 3500 0    50   ~ 0
3V3
Text Notes 1800 3600 2    50   ~ 0
CS
Text Notes 1800 3500 2    50   ~ 0
GND
Text Notes 1800 3900 2    50   ~ 0
MISO
Text Notes 2300 3600 0    50   ~ 0
DTR
Text Notes 2300 3900 0    50   ~ 0
MOSI
Text Notes 2300 3800 0    50   ~ 0
SCK
Text Notes 2300 3700 0    50   ~ 0
TX
$Comp
L Device:R R11
U 1 1 5DE3E291
P 10450 2900
F 0 "R11" H 10520 2946 50  0000 L CNN
F 1 "3K3" H 10520 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10380 2900 50  0001 C CNN
F 3 "~" H 10450 2900 50  0001 C CNN
	1    10450 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5DE3F1C1
P 4900 2300
F 0 "TP1" V 4900 2500 50  0000 L CNN
F 1 "TestPoint" H 4750 2300 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 5100 2300 50  0001 C CNN
F 3 "~" H 5100 2300 50  0001 C CNN
	1    4900 2300
	0    -1   -1   0   
$EndComp
$Comp
L Memory_EEPROM:24LC256 D4
U 1 1 5DF051C9
P 9350 4950
F 0 "D4" H 9100 5200 50  0000 C CNN
F 1 "24LC256T-I/SN" H 9000 4600 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9350 4950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21203m.pdf" H 9350 4950 50  0001 C CNN
	1    9350 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5DF81AC0
P 6100 1650
F 0 "#PWR0101" H 6100 1400 50  0001 C CNN
F 1 "GNDD" H 6104 1495 50  0001 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Text GLabel 1600 3800 0    50   Input ~ 0
RST
$Comp
L power:GNDD #PWR0102
U 1 1 5E1820FF
P 9350 5350
F 0 "#PWR0102" H 9350 5100 50  0001 C CNN
F 1 "GNDD" H 9354 5195 50  0001 C CNN
F 2 "" H 9350 5350 50  0001 C CNN
F 3 "" H 9350 5350 50  0001 C CNN
	1    9350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 5E18A0B8
P 9850 5100
F 0 "#PWR0103" H 9850 4850 50  0001 C CNN
F 1 "GNDD" H 9854 4945 50  0001 C CNN
F 2 "" H 9850 5100 50  0001 C CNN
F 3 "" H 9850 5100 50  0001 C CNN
	1    9850 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5E1A1B47
P 8750 5150
F 0 "#PWR0104" H 8750 4900 50  0001 C CNN
F 1 "GNDD" H 8754 4995 50  0001 C CNN
F 2 "" H 8750 5150 50  0001 C CNN
F 3 "" H 8750 5150 50  0001 C CNN
	1    8750 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E1CD230
P 10150 4750
F 0 "C10" H 10265 4796 50  0000 L CNN
F 1 "100 nF" H 10200 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10188 4600 50  0001 C CNN
F 3 "~" H 10150 4750 50  0001 C CNN
	1    10150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5E1E6132
P 10150 5000
F 0 "#PWR0105" H 10150 4750 50  0001 C CNN
F 1 "GNDD" H 10154 4845 50  0001 C CNN
F 2 "" H 10150 5000 50  0001 C CNN
F 3 "" H 10150 5000 50  0001 C CNN
	1    10150 5000
	1    0    0    -1  
$EndComp
Text GLabel 9200 4500 0    50   Input ~ 0
PD6
Text GLabel 1600 3600 0    50   Input ~ 0
PC3
$Comp
L Switch:SW_Reed SW1
U 1 1 5DF529B4
P 6350 5500
F 0 "SW1" V 6304 5585 50  0000 L CNN
F 1 "SW_Reed" V 6395 5585 50  0000 L CNN
F 2 "Button_Switch_THT:SW_reed" H 6350 5500 50  0001 C CNN
F 3 "" H 6350 5500 50  0001 C CNN
	1    6350 5500
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 5DF5B9F6
P 6350 6150
F 0 "#PWR0106" H 6350 5900 50  0001 C CNN
F 1 "GNDD" H 6354 5995 50  0001 C CNN
F 2 "" H 6350 6150 50  0001 C CNN
F 3 "" H 6350 6150 50  0001 C CNN
	1    6350 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 5DF1929E
P 2500 3200
F 0 "#PWR0107" H 2500 3050 50  0001 C CNN
F 1 "+3V3" H 2500 3350 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	7900 2200 8000 2100
Wire Wire Line
	1000 1000 1450 1000
Connection ~ 1450 1000
Wire Wire Line
	1450 1000 1750 1000
Wire Wire Line
	6150 3400 6250 3400
Wire Wire Line
	6250 3400 6350 3500
Wire Wire Line
	6150 3500 6250 3500
Wire Wire Line
	6250 3500 6350 3400
Wire Wire Line
	6900 3050 6900 3000
Wire Wire Line
	7200 3000 7200 3050
Wire Wire Line
	7200 3350 7200 3500
Wire Wire Line
	6900 3350 6900 3400
Wire Wire Line
	6900 5650 6900 5750
Wire Wire Line
	6900 6050 6900 6150
Wire Wire Line
	7200 6050 7200 6150
Wire Wire Line
	7800 5900 7800 6150
Wire Wire Line
	7800 5500 7800 5400
Wire Wire Line
	7800 5200 7800 5050
Wire Wire Line
	5550 4800 5550 5450
Wire Wire Line
	4100 2100 4100 2200
Wire Wire Line
	5550 1800 5550 1250
Wire Wire Line
	4100 2700 4100 2500
Wire Wire Line
	2650 1100 2650 1000
Wire Wire Line
	2650 1400 2650 1500
Wire Wire Line
	10800 1400 10550 1400
Wire Wire Line
	10800 2050 10800 1600
Wire Wire Line
	2350 1000 2650 1000
Connection ~ 2650 1000
Wire Wire Line
	10550 1400 10550 2050
Wire Wire Line
	9950 1500 10800 1500
Wire Wire Line
	9950 1200 10800 1200
Wire Wire Line
	9950 1100 10800 1100
Wire Wire Line
	9950 900  10800 900 
Wire Wire Line
	1000 1500 1450 1500
Wire Wire Line
	2050 1600 2050 1500
Connection ~ 2050 1500
Wire Wire Line
	2050 1500 2650 1500
Wire Wire Line
	1450 1400 1450 1500
Connection ~ 1450 1500
Wire Wire Line
	1450 1500 2050 1500
Wire Wire Line
	10800 1300 9950 1300
Wire Wire Line
	6150 3800 6200 3800
Wire Wire Line
	6150 3900 6200 3900
Wire Wire Line
	6900 4200 6900 5350
Wire Wire Line
	7200 4100 7200 5350
Wire Wire Line
	7200 5650 7200 5700
Wire Wire Line
	7500 5700 7200 5700
Connection ~ 7200 5700
Wire Wire Line
	7200 5700 7200 5750
Wire Wire Line
	9350 4100 9350 4000
Wire Wire Line
	9550 2750 9550 2700
Wire Wire Line
	9950 1000 10800 1000
Wire Wire Line
	9850 3400 10000 3400
Wire Wire Line
	6150 4400 6200 4400
Wire Wire Line
	10000 2750 10000 2700
Wire Wire Line
	10000 3050 10000 3400
Wire Wire Line
	7200 4000 7200 3800
Wire Wire Line
	10000 3400 10100 3400
Connection ~ 10000 3400
Wire Wire Line
	6150 4300 6200 4300
Wire Wire Line
	7200 3800 8850 3800
Wire Wire Line
	9550 3050 9550 3100
Wire Wire Line
	9550 2700 9350 2700
Connection ~ 9550 2700
Wire Wire Line
	9350 2700 9350 3200
Wire Wire Line
	9250 2700 9250 3200
Wire Wire Line
	8950 3050 8950 3100
Wire Wire Line
	8950 2750 8950 2700
Wire Wire Line
	8950 2700 9250 2700
Wire Wire Line
	6600 2700 6600 2850
Wire Wire Line
	2300 6500 2300 6550
Wire Wire Line
	2900 6550 2300 6550
Connection ~ 2300 6550
Wire Wire Line
	2300 6550 2300 6600
Wire Wire Line
	2900 7000 2300 7000
Wire Wire Line
	2300 6900 2300 7000
Wire Wire Line
	6150 3000 6200 3000
Wire Wire Line
	6150 3100 6200 3100
Wire Wire Line
	1850 6600 1850 6550
Wire Wire Line
	1850 6550 2300 6550
Wire Wire Line
	1850 6900 1850 7000
Wire Wire Line
	1850 7000 2300 7000
Connection ~ 2300 7000
Wire Wire Line
	7500 2850 7500 3050
Connection ~ 7500 3600
Wire Wire Line
	6150 2200 7900 2200
Wire Wire Line
	6150 2300 7900 2300
Wire Wire Line
	6150 2400 7900 2400
Wire Wire Line
	6150 2500 7900 2500
Wire Wire Line
	6150 2600 7900 2600
Wire Wire Line
	6350 3400 6900 3400
Connection ~ 6900 3400
Wire Wire Line
	6350 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	6150 3600 7500 3600
Wire Wire Line
	6150 4200 6900 4200
Wire Wire Line
	7500 3350 7500 3600
Wire Wire Line
	6150 4100 7200 4100
Wire Wire Line
	6150 4000 7200 4000
Wire Wire Line
	4100 2100 4950 2100
Wire Wire Line
	7250 2850 7500 2850
Connection ~ 7500 2850
Wire Wire Line
	6850 2850 6600 2850
Connection ~ 6600 2850
Wire Wire Line
	4900 2400 4950 2400
Wire Wire Line
	6200 2700 6150 2700
Wire Wire Line
	6200 2800 6150 2800
Wire Wire Line
	9250 2700 9250 2300
Connection ~ 9250 2700
Wire Wire Line
	9100 2300 9250 2300
Wire Wire Line
	8950 2500 8950 2550
Wire Wire Line
	8950 2050 8950 2100
Wire Wire Line
	6600 2700 8400 2700
Wire Wire Line
	2300 3700 2800 3700
Wire Wire Line
	2300 3800 2800 3800
Wire Wire Line
	2300 3900 2800 3900
Wire Wire Line
	9550 2650 9550 2700
Wire Wire Line
	10000 2700 10450 2700
Wire Wire Line
	10450 2700 10450 2750
Connection ~ 10000 2700
Wire Wire Line
	9850 3700 10450 3700
Wire Wire Line
	10450 3050 10450 3700
Connection ~ 10450 3700
Wire Wire Line
	10450 3700 10600 3700
Wire Wire Line
	6150 3200 6200 3200
Wire Wire Line
	6150 3300 6600 3300
Wire Wire Line
	6600 2850 6600 3300
Wire Wire Line
	1600 3800 1800 3800
Wire Wire Line
	4900 2300 4950 2300
Wire Wire Line
	2650 1000 5550 1000
Wire Wire Line
	6100 1350 6100 1250
Connection ~ 5550 1250
Wire Wire Line
	5550 1250 5550 1000
Wire Wire Line
	5000 1350 5000 1250
Wire Wire Line
	5000 1250 5550 1250
Wire Wire Line
	5550 1000 5650 1000
Wire Wire Line
	5650 1000 5650 1250
Connection ~ 5550 1000
Wire Wire Line
	5650 1250 6100 1250
Connection ~ 5650 1250
Wire Wire Line
	5650 1250 5650 1800
Wire Wire Line
	1800 3900 1600 3900
Wire Wire Line
	1600 3700 1800 3700
Wire Wire Line
	1450 3350 1450 3300
Wire Wire Line
	1600 3300 1600 3500
Wire Wire Line
	1600 3500 1800 3500
Wire Wire Line
	1450 3300 1600 3300
Wire Wire Line
	2850 3150 2850 3250
Wire Wire Line
	2850 3550 2850 3600
Wire Wire Line
	2850 3600 2300 3600
Wire Wire Line
	2300 3500 2500 3500
Wire Wire Line
	2500 3500 2500 3200
Wire Bus Line
	8000 650  9850 650 
Wire Wire Line
	8750 3500 8750 4850
Wire Wire Line
	8750 4850 8950 4850
Wire Wire Line
	8950 4950 8650 4950
Wire Wire Line
	8650 4950 8650 3400
Wire Wire Line
	9350 5250 9350 5350
Wire Wire Line
	9750 4850 9850 4850
Wire Wire Line
	9850 4850 9850 4950
Wire Wire Line
	9750 4950 9850 4950
Connection ~ 9850 4950
Wire Wire Line
	9850 4950 9850 5050
Wire Wire Line
	9750 5050 9850 5050
Connection ~ 9850 5050
Wire Wire Line
	9850 5050 9850 5100
Wire Wire Line
	8950 5050 8750 5050
Wire Wire Line
	8750 5050 8750 5150
Wire Wire Line
	9350 4500 9350 4650
Connection ~ 8650 3400
Connection ~ 8750 3500
Wire Wire Line
	8750 3500 8850 3500
Wire Wire Line
	7200 3500 8750 3500
Wire Wire Line
	8650 3400 8850 3400
Wire Wire Line
	6900 3400 8650 3400
Wire Wire Line
	9350 4500 10150 4500
Wire Wire Line
	10150 4500 10150 4600
Wire Wire Line
	9200 4500 9350 4500
Connection ~ 9350 4500
Wire Wire Line
	10150 4900 10150 5000
Wire Wire Line
	1600 3600 1800 3600
Wire Wire Line
	6350 4500 6350 5300
Wire Wire Line
	6150 4500 6350 4500
Wire Wire Line
	6350 5700 6350 6150
Entry Wire Line
	7900 2100 8000 2000
Wire Wire Line
	6150 2100 7900 2100
Text Label 7700 2100 0    50   ~ 0
PB0
Wire Wire Line
	8400 2050 8950 2050
Text GLabel 8500 2700 2    50   Input ~ 0
PC3
Wire Wire Line
	8400 2700 8500 2700
Connection ~ 8400 2700
Wire Wire Line
	7500 3600 7700 3600
Wire Wire Line
	1000 1100 1000 1500
Wire Wire Line
	2050 1300 2050 1500
Wire Wire Line
	1450 1000 1450 1100
Wire Wire Line
	7050 3000 7200 3000
Wire Wire Line
	6900 3000 7050 3000
Connection ~ 7050 3000
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5DE7A060
P 7050 2850
F 0 "JP1" H 7050 2950 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 7050 2964 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 7050 2850 50  0001 C CNN
F 3 "~" H 7050 2850 50  0001 C CNN
	1    7050 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8400 2050 8400 2700
Wire Wire Line
	2300 6050 2300 6200
Entry Wire Line
	9850 1000 9950 1100
Entry Wire Line
	9850 1000 9950 1100
Entry Wire Line
	8000 2300 8100 2400
Text GLabel 8150 2400 2    50   Input ~ 0
PB3
Wire Wire Line
	8100 2400 8150 2400
Entry Wire Line
	8000 2400 8100 2500
Entry Wire Line
	8000 2500 8100 2600
Text GLabel 8150 2500 2    50   Input ~ 0
PB4
Text GLabel 8150 2600 2    50   Input ~ 0
PB5
Wire Wire Line
	8100 2500 8150 2500
Wire Wire Line
	8100 2600 8150 2600
$Comp
L Device:R R8
U 1 1 5C1F151D
P 10000 2900
F 0 "R8" H 10070 2946 50  0000 L CNN
F 1 "3K3" H 10070 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9930 2900 50  0001 C CNN
F 3 "~" H 10000 2900 50  0001 C CNN
	1    10000 2900
	1    0    0    -1  
$EndComp
Text GLabel 9550 2650 1    50   Input ~ 0
CR
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5F60CE06
P 9750 2300
F 0 "JP3" H 9750 2505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9750 2414 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9750 2300 50  0001 C CNN
F 3 "~" H 9750 2300 50  0001 C CNN
	1    9750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2300 9450 2300
Wire Wire Line
	9450 2300 9450 2450
Wire Wire Line
	9450 2450 9650 2450
Wire Wire Line
	9650 2450 9650 2700
Wire Wire Line
	9650 2700 9550 2700
Wire Wire Line
	10000 2700 9850 2700
Wire Wire Line
	9850 2700 9850 2450
Wire Wire Line
	9850 2450 10000 2450
Wire Wire Line
	10000 2450 10000 2300
Wire Wire Line
	10000 2300 9900 2300
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5F63A907
P 9300 1600
F 0 "J1" H 9328 1576 50  0000 L CNN
F 1 "Conn_01x02_Female" H 9328 1485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9300 1600 50  0001 C CNN
F 3 "~" H 9300 1600 50  0001 C CNN
	1    9300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1600 8850 1600
Wire Wire Line
	9100 1700 8950 1700
Wire Wire Line
	8950 1700 8950 1800
Text GLabel 8850 1600 0    50   Input ~ 0
CR
Wire Bus Line
	9850 650  9850 1500
Wire Bus Line
	8000 650  8000 2600
$Comp
L power:GNDD #PWR05
U 1 1 5F66578C
P 8950 1800
F 0 "#PWR05" H 8950 1550 50  0001 C CNN
F 1 "GNDD" H 8954 1645 50  0000 C CNN
F 2 "" H 8950 1800 50  0001 C CNN
F 3 "" H 8950 1800 50  0001 C CNN
	1    8950 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
