EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:akizuki
LIBS:renesas
LIBS:VS1063_Player-cache
EELAYER 25 0
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
L VS1053 U?
U 1 1 57ACA381
P 6450 4000
F 0 "U?" H 7000 5750 60  0000 C CNN
F 1 "VS1063a" H 6000 2250 60  0000 C CNN
F 2 "" H 6450 3950 60  0000 C CNN
F 3 "" H 6450 3950 60  0000 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P?
U 1 1 57ACA3DB
P 3600 3100
F 0 "P?" H 3600 3400 50  0000 C CNN
F 1 "CONN_02X05" H 3600 2800 50  0000 C CNN
F 2 "" H 3600 1900 50  0000 C CNN
F 3 "" H 3600 1900 50  0000 C CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2900 3850 2900
Wire Wire Line
	3350 2900 3200 2900
Wire Wire Line
	3200 2900 3200 2600
Wire Wire Line
	3200 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2800
Wire Wire Line
	3950 2800 5650 2800
Wire Wire Line
	3850 3000 4050 3000
$Comp
L +3.3V #PWR?
U 1 1 57ACA542
P 4050 2200
F 0 "#PWR?" H 4050 2050 50  0001 C CNN
F 1 "+3.3V" H 4050 2340 50  0000 C CNN
F 2 "" H 4050 2200 50  0000 C CNN
F 3 "" H 4050 2200 50  0000 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3000 4050 2200
Wire Wire Line
	5650 2600 5550 2600
Wire Wire Line
	5550 2600 5550 2200
$Comp
L +3.3V #PWR?
U 1 1 57ACA574
P 5550 2200
F 0 "#PWR?" H 5550 2050 50  0001 C CNN
F 1 "+3.3V" H 5550 2340 50  0000 C CNN
F 2 "" H 5550 2200 50  0000 C CNN
F 3 "" H 5550 2200 50  0000 C CNN
	1    5550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2400 5550 2400
Connection ~ 5550 2400
Wire Wire Line
	5650 2500 5550 2500
Connection ~ 5550 2500
$Comp
L GND #PWR?
U 1 1 57ACA5AC
P 2900 3550
F 0 "#PWR?" H 2900 3300 50  0001 C CNN
F 1 "GND" H 2900 3400 50  0000 C CNN
F 2 "" H 2900 3550 50  0000 C CNN
F 3 "" H 2900 3550 50  0000 C CNN
	1    2900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3000 2900 3550
Wire Wire Line
	3850 3100 5650 3100
Wire Wire Line
	5650 3000 4200 3000
Wire Wire Line
	4200 3000 4200 2500
Wire Wire Line
	4200 2500 3100 2500
Wire Wire Line
	3100 2500 3100 3100
Wire Wire Line
	3100 3100 3350 3100
Wire Wire Line
	5650 3400 4050 3400
Wire Wire Line
	4050 3400 4050 3300
Wire Wire Line
	4050 3300 3850 3300
Wire Wire Line
	5650 3200 3850 3200
Wire Wire Line
	5650 3300 4300 3300
Wire Wire Line
	4300 3300 4300 2400
Wire Wire Line
	4300 2400 3000 2400
Wire Wire Line
	3000 2400 3000 3200
Wire Wire Line
	3000 3200 3350 3200
Text Label 3850 2900 0    60   ~ 0
SI
Text Label 3250 2900 0    60   ~ 0
SO
Text Label 3150 3100 0    60   ~ 0
SCLK
Text Label 3850 3100 0    60   ~ 0
~CS
Text Label 3850 3200 0    60   ~ 0
~DCS
Text Label 3150 3200 0    60   ~ 0
DREQ
Text Label 3850 3300 0    60   ~ 0
~RESET
Wire Wire Line
	3350 3000 2900 3000
$Comp
L C C?
U 1 1 57AE9AF8
P 4600 1750
F 0 "C?" H 4625 1850 50  0000 L CNN
F 1 "0.1uF" H 4625 1650 50  0000 L CNN
F 2 "" H 4638 1600 50  0000 C CNN
F 3 "" H 4600 1750 50  0000 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9BF5
P 4850 1750
F 0 "C?" H 4875 1850 50  0000 L CNN
F 1 "0.1uF" H 4875 1650 50  0000 L CNN
F 2 "" H 4888 1600 50  0000 C CNN
F 3 "" H 4850 1750 50  0000 C CNN
	1    4850 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9D34
P 5100 1750
F 0 "C?" H 5125 1850 50  0000 L CNN
F 1 "0.1uF" H 5125 1650 50  0000 L CNN
F 2 "" H 5138 1600 50  0000 C CNN
F 3 "" H 5100 1750 50  0000 C CNN
	1    5100 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9D53
P 6300 1750
F 0 "C?" H 6325 1850 50  0000 L CNN
F 1 "0.1uF" H 6325 1650 50  0000 L CNN
F 2 "" H 6338 1600 50  0000 C CNN
F 3 "" H 6300 1750 50  0000 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9D7E
P 6550 1750
F 0 "C?" H 6575 1850 50  0000 L CNN
F 1 "0.1uF" H 6575 1650 50  0000 L CNN
F 2 "" H 6588 1600 50  0000 C CNN
F 3 "" H 6550 1750 50  0000 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9DA1
P 6800 1750
F 0 "C?" H 6825 1850 50  0000 L CNN
F 1 "0.1uF" H 6825 1650 50  0000 L CNN
F 2 "" H 6838 1600 50  0000 C CNN
F 3 "" H 6800 1750 50  0000 C CNN
	1    6800 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9DC6
P 7050 1750
F 0 "C?" H 7075 1850 50  0000 L CNN
F 1 "0.1uF" H 7075 1650 50  0000 L CNN
F 2 "" H 7088 1600 50  0000 C CNN
F 3 "" H 7050 1750 50  0000 C CNN
	1    7050 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9EA1
P 7650 3500
F 0 "C?" H 7675 3600 50  0000 L CNN
F 1 "0.1uF" H 7675 3400 50  0000 L CNN
F 2 "" H 7688 3350 50  0000 C CNN
F 3 "" H 7650 3500 50  0000 C CNN
	1    7650 3500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9EEA
P 8000 3500
F 0 "C?" H 8025 3600 50  0000 L CNN
F 1 "0.1uF" H 8025 3400 50  0000 L CNN
F 2 "" H 8038 3350 50  0000 C CNN
F 3 "" H 8000 3500 50  0000 C CNN
	1    8000 3500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AE9F15
P 8350 3500
F 0 "C?" H 8375 3600 50  0000 L CNN
F 1 "0.1uF" H 8375 3400 50  0000 L CNN
F 2 "" H 8388 3350 50  0000 C CNN
F 3 "" H 8350 3500 50  0000 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3350 8350 3250
Wire Wire Line
	7400 3250 8700 3250
Wire Wire Line
	7400 3250 7400 3600
Wire Wire Line
	7400 3600 7250 3600
Wire Wire Line
	7250 3500 7400 3500
Connection ~ 7400 3500
Wire Wire Line
	7250 3400 7400 3400
Connection ~ 7400 3400
Wire Wire Line
	7650 3350 7650 3250
Connection ~ 7650 3250
Wire Wire Line
	8000 3350 8000 3250
Connection ~ 8000 3250
$Comp
L +1V8 #PWR?
U 1 1 57AEA190
P 7400 2200
F 0 "#PWR?" H 7400 2050 50  0001 C CNN
F 1 "+1V8" H 7400 2340 50  0000 C CNN
F 2 "" H 7400 2200 50  0000 C CNN
F 3 "" H 7400 2200 50  0000 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2700 7400 2700
Wire Wire Line
	7400 2700 7400 2200
Wire Wire Line
	7250 2600 7400 2600
Connection ~ 7400 2600
Wire Wire Line
	7250 2500 7400 2500
Connection ~ 7400 2500
Wire Wire Line
	7250 2400 7400 2400
Connection ~ 7400 2400
Wire Wire Line
	4600 1600 4600 1500
Wire Wire Line
	4300 1500 5100 1500
Wire Wire Line
	5100 1500 5100 1600
Wire Wire Line
	4850 1600 4850 1400
$Comp
L +3.3V #PWR?
U 1 1 57AEA77A
P 4850 1400
F 0 "#PWR?" H 4850 1250 50  0001 C CNN
F 1 "+3.3V" H 4850 1540 50  0000 C CNN
F 2 "" H 4850 1400 50  0000 C CNN
F 3 "" H 4850 1400 50  0000 C CNN
	1    4850 1400
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 57AEA7A6
P 4850 2100
F 0 "#PWR?" H 4850 1850 50  0001 C CNN
F 1 "GNDD" H 4850 1950 50  0000 C CNN
F 2 "" H 4850 2100 50  0000 C CNN
F 3 "" H 4850 2100 50  0000 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1900 4600 2000
Wire Wire Line
	4300 2000 5100 2000
Wire Wire Line
	5100 2000 5100 1900
Wire Wire Line
	4850 1900 4850 2100
Connection ~ 4850 2000
Connection ~ 4850 1500
$Comp
L GNDD #PWR?
U 1 1 57AEA911
P 6300 2050
F 0 "#PWR?" H 6300 1800 50  0001 C CNN
F 1 "GNDD" H 6300 1900 50  0000 C CNN
F 2 "" H 6300 2050 50  0000 C CNN
F 3 "" H 6300 2050 50  0000 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2050 6300 1900
Wire Wire Line
	6300 2000 7050 2000
Wire Wire Line
	7050 2000 7050 1900
Connection ~ 6300 2000
Wire Wire Line
	6800 2000 6800 1900
Connection ~ 6800 2000
Wire Wire Line
	6550 2000 6550 1900
Connection ~ 6550 2000
$Comp
L +1V8 #PWR?
U 1 1 57AEAA77
P 7050 1400
F 0 "#PWR?" H 7050 1250 50  0001 C CNN
F 1 "+1V8" H 7050 1540 50  0000 C CNN
F 2 "" H 7050 1400 50  0000 C CNN
F 3 "" H 7050 1400 50  0000 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1600 6300 1500
Wire Wire Line
	6300 1500 7050 1500
Wire Wire Line
	7050 1400 7050 1600
Connection ~ 7050 1500
Wire Wire Line
	6800 1600 6800 1500
Connection ~ 6800 1500
Wire Wire Line
	6550 1600 6550 1500
Connection ~ 6550 1500
$Comp
L GNDA #PWR?
U 1 1 57AEAF9B
P 9350 3500
F 0 "#PWR?" H 9350 3250 50  0001 C CNN
F 1 "GNDA" H 9350 3350 50  0000 C CNN
F 2 "" H 9350 3500 50  0000 C CNN
F 3 "" H 9350 3500 50  0000 C CNN
	1    9350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3500 9350 3400
Wire Wire Line
	9350 3400 9150 3400
Wire Wire Line
	7650 3750 7650 3650
Wire Wire Line
	8000 3750 8000 3650
Connection ~ 8000 3750
Wire Wire Line
	8350 3750 8350 3650
Connection ~ 8350 3750
$Comp
L R R?
U 1 1 57AEB585
P 5350 3500
F 0 "R?" V 5450 3500 50  0000 C CNN
F 1 "100K" V 5450 3700 50  0000 C CNN
F 2 "" V 5280 3500 50  0000 C CNN
F 3 "" H 5350 3500 50  0000 C CNN
	1    5350 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3500 5500 3500
$Comp
L +3.3V #PWR?
U 1 1 57AEB6FE
P 5100 3500
F 0 "#PWR?" H 5100 3350 50  0001 C CNN
F 1 "+3.3V" H 5100 3640 50  0000 C CNN
F 2 "" H 5100 3500 50  0000 C CNN
F 3 "" H 5100 3500 50  0000 C CNN
	1    5100 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3500 5100 3500
$Comp
L CRYSTAL X?
U 1 1 57AEB792
P 4900 3900
F 0 "X?" H 5000 4000 60  0000 C CNN
F 1 "12.288MHz" H 4800 3800 60  0000 C CNN
F 2 "" V 4900 3900 60  0000 C CNN
F 3 "" V 4900 3900 60  0000 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57AEB7E5
P 5200 3900
F 0 "R?" V 5300 3900 50  0000 C CNN
F 1 "1M" V 5100 3900 50  0000 C CNN
F 2 "" V 5130 3900 50  0000 C CNN
F 3 "" H 5200 3900 50  0000 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AEB953
P 4400 3700
F 0 "C?" H 4425 3800 50  0000 L CNN
F 1 "33pF" H 4425 3600 50  0000 L CNN
F 2 "" H 4438 3550 50  0000 C CNN
F 3 "" H 4400 3700 50  0000 C CNN
	1    4400 3700
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 57AEB9B2
P 4400 4100
F 0 "C?" H 4425 4200 50  0000 L CNN
F 1 "33pF" H 4425 4000 50  0000 L CNN
F 2 "" H 4438 3950 50  0000 C CNN
F 3 "" H 4400 4100 50  0000 C CNN
	1    4400 4100
	0    1    1    0   
$EndComp
$Comp
L GNDD #PWR?
U 1 1 57AEBA4C
P 3950 3800
F 0 "#PWR?" H 3950 3550 50  0001 C CNN
F 1 "GNDD" H 3950 3650 50  0000 C CNN
F 2 "" H 3950 3800 50  0000 C CNN
F 3 "" H 3950 3800 50  0000 C CNN
	1    3950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3800 3950 3700
Wire Wire Line
	3950 3700 4250 3700
Wire Wire Line
	4150 3700 4150 4100
Wire Wire Line
	4150 4100 4250 4100
Connection ~ 4150 3700
Wire Wire Line
	4550 3700 5650 3700
Wire Wire Line
	5200 3750 5200 3700
Connection ~ 5200 3700
Wire Wire Line
	4900 3750 4900 3700
Connection ~ 4900 3700
Wire Wire Line
	4550 4100 5450 4100
Wire Wire Line
	5200 4100 5200 4050
Connection ~ 5200 4100
Wire Wire Line
	4900 4100 4900 4050
Connection ~ 4900 4100
Wire Wire Line
	5650 5100 5550 5100
Wire Wire Line
	5550 5100 5550 5900
$Comp
L GNDD #PWR?
U 1 1 57AEBF46
P 5550 5900
F 0 "#PWR?" H 5550 5650 50  0001 C CNN
F 1 "GNDD" H 5550 5750 50  0000 C CNN
F 2 "" H 5550 5900 50  0000 C CNN
F 3 "" H 5550 5900 50  0000 C CNN
	1    5550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5200 5550 5200
Connection ~ 5550 5200
Wire Wire Line
	5650 5300 5550 5300
Connection ~ 5550 5300
Wire Wire Line
	5650 5400 5550 5400
Connection ~ 5550 5400
Wire Wire Line
	5650 5500 5550 5500
Connection ~ 5550 5500
Wire Wire Line
	5650 5600 5550 5600
Connection ~ 5550 5600
$Comp
L GNDA #PWR?
U 1 1 57AEC9AE
P 7350 5900
F 0 "#PWR?" H 7350 5650 50  0001 C CNN
F 1 "GNDA" H 7350 5750 50  0000 C CNN
F 2 "" H 7350 5900 50  0000 C CNN
F 3 "" H 7350 5900 50  0000 C CNN
	1    7350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5900 7350 5300
Wire Wire Line
	7350 5300 7250 5300
Wire Wire Line
	7250 5400 7600 5400
Connection ~ 7350 5400
Wire Wire Line
	7250 5500 7350 5500
Connection ~ 7350 5500
Wire Wire Line
	7250 5600 7350 5600
Connection ~ 7350 5600
$Comp
L C C?
U 1 1 57AECDBE
P 7600 5150
F 0 "C?" H 7625 5250 50  0000 L CNN
F 1 "1uF" H 7625 5050 50  0000 L CNN
F 2 "" H 7638 5000 50  0000 C CNN
F 3 "" H 7600 5150 50  0000 C CNN
	1    7600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5000 7600 4900
Wire Wire Line
	7600 4900 7250 4900
Wire Wire Line
	7600 5400 7600 5300
Wire Wire Line
	4800 4200 5650 4200
Wire Wire Line
	5250 4200 5250 4900
Wire Wire Line
	5250 4900 5650 4900
Wire Wire Line
	5650 4800 5250 4800
Connection ~ 5250 4800
Wire Wire Line
	5650 4700 5250 4700
Connection ~ 5250 4700
Wire Wire Line
	5650 4600 5250 4600
Connection ~ 5250 4600
Wire Wire Line
	5650 4500 5250 4500
Connection ~ 5250 4500
Wire Wire Line
	5650 4400 5250 4400
Connection ~ 5250 4400
Wire Wire Line
	5650 4300 5250 4300
Connection ~ 5250 4300
$Comp
L R R?
U 1 1 57AED4ED
P 4800 4550
F 0 "R?" V 4900 4550 50  0000 C CNN
F 1 "100K" V 4700 4550 50  0000 C CNN
F 2 "" V 4730 4550 50  0000 C CNN
F 3 "" H 4800 4550 50  0000 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 57AED538
P 4800 4900
F 0 "#PWR?" H 4800 4650 50  0001 C CNN
F 1 "GNDD" H 4800 4750 50  0000 C CNN
F 2 "" H 4800 4900 50  0000 C CNN
F 3 "" H 4800 4900 50  0000 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4900 4800 4700
Wire Wire Line
	4800 4400 4800 4200
Connection ~ 5250 4200
Wire Wire Line
	5450 4100 5450 3800
Wire Wire Line
	5450 3800 5650 3800
$Comp
L R R?
U 1 1 57AED93C
P 8650 4350
F 0 "R?" V 8730 4350 50  0000 C CNN
F 1 "20" V 8650 4350 50  0000 C CNN
F 2 "" V 8580 4350 50  0000 C CNN
F 3 "" H 8650 4350 50  0000 C CNN
	1    8650 4350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57AED9B7
P 8900 4350
F 0 "R?" V 8980 4350 50  0000 C CNN
F 1 "20" V 8900 4350 50  0000 C CNN
F 2 "" V 8830 4350 50  0000 C CNN
F 3 "" H 8900 4350 50  0000 C CNN
	1    8900 4350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57AED9F8
P 9150 4350
F 0 "R?" V 9230 4350 50  0000 C CNN
F 1 "10" V 9150 4350 50  0000 C CNN
F 2 "" V 9080 4350 50  0000 C CNN
F 3 "" H 9150 4350 50  0000 C CNN
	1    9150 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AEDA3B
P 8650 4750
F 0 "C?" H 8675 4850 50  0000 L CNN
F 1 "0.01uF" H 8350 4650 50  0000 L CNN
F 2 "" H 8688 4600 50  0000 C CNN
F 3 "" H 8650 4750 50  0000 C CNN
	1    8650 4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AEDA80
P 8900 4750
F 0 "C?" H 8925 4850 50  0000 L CNN
F 1 "0.01uF" H 8700 4650 50  0000 L CNN
F 2 "" H 8938 4600 50  0000 C CNN
F 3 "" H 8900 4750 50  0000 C CNN
	1    8900 4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57AEDAC5
P 9150 4750
F 0 "C?" H 9175 4850 50  0000 L CNN
F 1 "0.047uF" H 9250 4650 50  0000 L CNN
F 2 "" H 9188 4600 50  0000 C CNN
F 3 "" H 9150 4750 50  0000 C CNN
	1    9150 4750
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 57AEDB0E
P 8900 5100
F 0 "#PWR?" H 8900 4850 50  0001 C CNN
F 1 "GNDA" H 8900 4950 50  0000 C CNN
F 2 "" H 8900 5100 50  0000 C CNN
F 3 "" H 8900 5100 50  0000 C CNN
	1    8900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4900 8650 5000
Wire Wire Line
	8650 5000 9150 5000
Wire Wire Line
	8900 4900 8900 5100
Connection ~ 8900 5000
Wire Wire Line
	9150 5000 9150 4900
Wire Wire Line
	8650 4600 8650 4500
Wire Wire Line
	8900 4600 8900 4500
Wire Wire Line
	9150 4600 9150 4500
Wire Wire Line
	8650 3900 8650 4200
Wire Wire Line
	8900 3800 8900 4200
Wire Wire Line
	9150 4000 9150 4200
$Comp
L STEREO CN?
U 1 1 57AFCCE3
P 9950 4000
F 0 "CN?" H 9950 4200 60  0000 C CNN
F 1 "STEREO" H 9950 3800 60  0000 C CNN
F 2 "" H 9950 3800 60  0000 C CNN
F 3 "" H 9950 3800 60  0000 C CNN
	1    9950 4000
	1    0    0    -1  
$EndComp
Connection ~ 8650 3900
Connection ~ 8900 4000
Connection ~ 9150 4100
Wire Wire Line
	7250 3900 9700 3900
Wire Wire Line
	7250 4100 9150 4100
Wire Wire Line
	9150 4000 9700 4000
Wire Wire Line
	7250 4000 8900 4000
Wire Wire Line
	8900 3800 9300 3800
Wire Wire Line
	9300 3800 9300 4100
Wire Wire Line
	9300 4100 9700 4100
$Comp
L NJM2845DL1-18 U?
U 1 1 57AFFEA5
P 8650 1700
F 0 "U?" H 8750 1950 60  0000 C CNN
F 1 "NJM2845DL1-18" H 8600 1450 60  0000 C CNN
F 2 "" H 8650 1700 60  0000 C CNN
F 3 "" H 8650 1700 60  0000 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 57B001F9
P 8100 1600
F 0 "#PWR?" H 8100 1450 50  0001 C CNN
F 1 "+3.3V" H 8100 1740 50  0000 C CNN
F 2 "" H 8100 1600 50  0000 C CNN
F 3 "" H 8100 1600 50  0000 C CNN
	1    8100 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 1600 8100 1600
$Comp
L GNDD #PWR?
U 1 1 57B00307
P 9500 2150
F 0 "#PWR?" H 9500 1900 50  0001 C CNN
F 1 "GNDD" H 9500 2000 50  0000 C CNN
F 2 "" H 9500 2150 50  0000 C CNN
F 3 "" H 9500 2150 50  0000 C CNN
	1    9500 2150
	1    0    0    -1  
$EndComp
$Comp
L C-POL C?
U 1 1 57B0038D
P 9500 1800
F 0 "C?" H 9600 1900 60  0000 C CNN
F 1 "22uF" H 9400 1700 60  0000 C CNN
F 2 "" V 9500 1800 60  0000 C CNN
F 3 "" V 9500 1800 60  0000 C CNN
	1    9500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1600 9500 1600
Wire Wire Line
	9500 1450 9500 1650
Wire Wire Line
	9050 1800 9200 1800
Wire Wire Line
	9200 1800 9200 2050
Wire Wire Line
	9200 2050 9500 2050
Wire Wire Line
	9500 1950 9500 2150
Connection ~ 9500 2050
$Comp
L +1V8 #PWR?
U 1 1 57B006B8
P 9500 1450
F 0 "#PWR?" H 9500 1300 50  0001 C CNN
F 1 "+1V8" H 9500 1590 50  0000 C CNN
F 2 "" H 9500 1450 50  0000 C CNN
F 3 "" H 9500 1450 50  0000 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
Connection ~ 9500 1600
$Comp
L C-POL C?
U 1 1 57B00ADA
P 4300 1750
F 0 "C?" H 4400 1850 60  0000 C CNN
F 1 "22uF" H 4200 1650 60  0000 C CNN
F 2 "" V 4300 1750 60  0000 C CNN
F 3 "" V 4300 1750 60  0000 C CNN
	1    4300 1750
	1    0    0    -1  
$EndComp
$Comp
L C-POL C?
U 1 1 57B00B33
P 8700 3500
F 0 "C?" H 8800 3600 60  0000 C CNN
F 1 "22uF" H 8850 3400 60  0000 C CNN
F 2 "" V 8700 3500 60  0000 C CNN
F 3 "" V 8700 3500 60  0000 C CNN
	1    8700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3000 8700 3350
Connection ~ 8350 3250
Wire Wire Line
	7650 3750 9150 3750
Wire Wire Line
	8700 3750 8700 3650
Wire Wire Line
	9150 3750 9150 3400
Connection ~ 8700 3750
Wire Wire Line
	4300 1900 4300 2000
Connection ~ 4600 2000
Wire Wire Line
	4300 1600 4300 1500
Connection ~ 4600 1500
$Comp
L R FB?
U 1 1 57B0159C
P 8700 2850
F 0 "FB?" V 8800 2850 50  0000 C CNN
F 1 "BLM18PG471SN1D" V 8600 2850 50  0000 C CNN
F 2 "" V 8630 2850 50  0000 C CNN
F 3 "" H 8700 2850 50  0000 C CNN
	1    8700 2850
	1    0    0    -1  
$EndComp
Connection ~ 8700 3250
$Comp
L +3.3V #PWR?
U 1 1 57B01751
P 8700 2500
F 0 "#PWR?" H 8700 2350 50  0001 C CNN
F 1 "+3.3V" H 8700 2640 50  0000 C CNN
F 2 "" H 8700 2500 50  0000 C CNN
F 3 "" H 8700 2500 50  0000 C CNN
	1    8700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2700 8700 2500
$EndSCHEMATC
