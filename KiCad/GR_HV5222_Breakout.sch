EESchema Schematic File Version 4
LIBS:GR_Nixie_Driver-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "HV5222 Breakout"
Date "2024-04-20"
Rev "1"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/gadgetreboot"
Comment2 "https://github.com/GadgetReboot/HV5222_Breakout"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GR_Nixie_Driver-rescue:AP3012-extlib-GR_ISO_Boost-rescue U1
U 1 1 5DD62BD3
P 4350 1425
F 0 "U1" H 4125 1150 50  0000 C CNN
F 1 "AP3012" H 4500 1150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 4375 1175 50  0001 L CIN
F 3 "" H 4350 1425 50  0001 C CNN
	1    4350 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Iron L1
U 1 1 5DD6618A
P 4375 1075
F 0 "L1" V 4600 1075 50  0000 C CNN
F 1 "22uH" V 4509 1075 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-60xx_HandSoldering" H 4375 1075 50  0001 C CNN
F 3 "~" H 4375 1075 50  0001 C CNN
F 4 "FIXED IND 22UH 1.5A 149.5MOHM SMD" H 4375 1075 50  0001 C CNN "Desc"
F 5 "NR6045T220M" H 4375 1075 50  0001 C CNN "Part #"
	1    4375 1075
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D1
U 1 1 5DD687E4
P 5050 1075
F 0 "D1" H 5050 859 50  0000 C CNN
F 1 "SS16" H 5050 950 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 5050 900 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 5050 1075 50  0001 C CNN
F 4 "DIODE SCHOTTKY 60V 1A DO214AC" H 5050 1075 50  0001 C CNN "Desc"
F 5 "SS16" H 5050 1075 50  0001 C CNN "Part #"
	1    5050 1075
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5DD691BD
P 5350 1625
F 0 "R2" H 5282 1579 50  0000 R CNN
F 1 "10K5" H 5282 1670 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 1625 50  0001 C CNN
F 3 "~" H 5350 1625 50  0001 C CNN
F 4 "RES 1.6K OHM 1% 1/10W 0805" H 5350 1625 50  0001 C CNN "Desc"
	1    5350 1625
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DD696B3
P 3550 1300
F 0 "C2" H 3625 1325 50  0000 L CNN
F 1 "1uF" H 3625 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 1300 50  0001 C CNN
F 3 "~" H 3550 1300 50  0001 C CNN
F 4 "CAP CER 1uF 0805 X7R 50V" H 3550 1300 50  0001 C CNN "Desc"
F 5 "CL21B105KBFNNNF" H 3550 1300 50  0001 C CNN "Part #"
	1    3550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 1075 3850 1075
Wire Wire Line
	3850 1075 3850 1325
Wire Wire Line
	3850 1325 3950 1325
Wire Wire Line
	3550 1200 3550 1075
Connection ~ 3850 1075
$Comp
L power:GNDREF #PWR03
U 1 1 5DF285E8
P 3550 1525
F 0 "#PWR03" H 3550 1275 50  0001 C CNN
F 1 "GNDREF" H 3800 1250 50  0001 C CNN
F 2 "" H 3550 1525 50  0001 C CNN
F 3 "" H 3550 1525 50  0001 C CNN
	1    3550 1525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 1525 3550 1400
Wire Wire Line
	4750 1325 4800 1325
Wire Wire Line
	4800 1325 4800 1075
Wire Wire Line
	4800 1075 4525 1075
Wire Wire Line
	4900 1075 4800 1075
Connection ~ 4800 1075
$Comp
L power:GNDREF #PWR04
U 1 1 5E02D420
P 4800 1600
F 0 "#PWR04" H 4800 1350 50  0001 C CNN
F 1 "GNDREF" H 5050 1325 50  0001 C CNN
F 2 "" H 4800 1600 50  0001 C CNN
F 3 "" H 4800 1600 50  0001 C CNN
	1    4800 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 1600 4800 1525
Wire Wire Line
	4800 1525 4750 1525
$Comp
L power:GNDREF #PWR05
U 1 1 5E19B1D6
P 5350 1850
F 0 "#PWR05" H 5350 1600 50  0001 C CNN
F 1 "GNDREF" H 5600 1575 50  0001 C CNN
F 2 "" H 5350 1850 50  0001 C CNN
F 3 "" H 5350 1850 50  0001 C CNN
	1    5350 1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5E24CEEF
P 5350 1200
F 0 "R1" H 5282 1154 50  0000 R CNN
F 1 "91K" H 5282 1245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5350 1200 50  0001 C CNN
F 3 "~" H 5350 1200 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 5350 1200 50  0001 C CNN "Desc"
	1    5350 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1100 5350 1075
Wire Wire Line
	5350 1075 5200 1075
Wire Wire Line
	5350 1525 5350 1425
Connection ~ 5350 1425
Wire Wire Line
	5350 1425 5350 1300
Text Notes 3950 2100 0    50   ~ 0
VOut = 1.25*(1+Rtop/Rbot)\n     = 1.25*(1+91K/10K5) \n     = 12.08 V 
$Comp
L Device:C_Small C1
U 1 1 5E47D66B
P 5700 1275
F 0 "C1" H 5775 1300 50  0000 L CNN
F 1 "1uF" H 5775 1175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5700 1275 50  0001 C CNN
F 3 "~" H 5700 1275 50  0001 C CNN
F 4 "CAP CER 1uF 0805 X7R 50V" H 5700 1275 50  0001 C CNN "Desc"
F 5 "CL21B105KBFNNNF" H 5700 1275 50  0001 C CNN "Part #"
	1    5700 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1175 5700 1075
$Comp
L power:GNDREF #PWR02
U 1 1 5E47D676
P 5700 1450
F 0 "#PWR02" H 5700 1200 50  0001 C CNN
F 1 "GNDREF" H 5950 1175 50  0001 C CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 1450 5700 1375
Wire Wire Line
	5700 1075 5350 1075
Connection ~ 5350 1075
Connection ~ 5700 1075
Wire Wire Line
	4750 1425 5350 1425
Wire Wire Line
	5350 1725 5350 1850
$Comp
L HV5222:HV5222 U2
U 1 1 66036D11
P 6925 4325
F 0 "U2" H 6600 2550 50  0000 C CNN
F 1 "HV5222" H 7300 2550 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_16.6x16.6mm_P1.27mm" H 7200 6250 50  0001 C CNN
F 3 "https://www.microchip.com/wwwproducts/en/HV5222" H 7200 6250 50  0001 C CNN
	1    6925 4325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 66060103
P 6975 6200
F 0 "#PWR017" H 6975 5950 50  0001 C CNN
F 1 "GNDREF" H 7225 5925 50  0001 C CNN
F 2 "" H 6975 6200 50  0001 C CNN
F 3 "" H 6975 6200 50  0001 C CNN
	1    6975 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6975 6200 6975 6125
$Comp
L power:+12V #PWR06
U 1 1 660621C8
P 6975 2050
F 0 "#PWR06" H 6975 1900 50  0001 C CNN
F 1 "+12V" H 6990 2223 50  0000 C CNN
F 2 "" H 6975 2050 50  0001 C CNN
F 3 "" H 6975 2050 50  0001 C CNN
	1    6975 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 2425 6975 2200
$Comp
L power:+12V #PWR01
U 1 1 6606448E
P 5950 1050
F 0 "#PWR01" H 5950 900 50  0001 C CNN
F 1 "+12V" H 5965 1223 50  0000 C CNN
F 2 "" H 5950 1050 50  0001 C CNN
F 3 "" H 5950 1050 50  0001 C CNN
	1    5950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1075 5950 1050
Wire Wire Line
	5700 1075 5950 1075
Wire Wire Line
	3850 1525 3950 1525
Wire Wire Line
	3550 1075 3850 1075
$Comp
L Device:C_Small C3
U 1 1 6606FE5F
P 7225 2200
F 0 "C3" V 7325 2150 50  0000 L CNN
F 1 "100nF" V 7100 2075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7225 2200 50  0001 C CNN
F 3 "~" H 7225 2200 50  0001 C CNN
F 4 "CAP CER 1uF 0805 X7R 50V" H 7225 2200 50  0001 C CNN "Desc"
F 5 "CL21B105KBFNNNF" H 7225 2200 50  0001 C CNN "Part #"
	1    7225 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 6606FE69
P 7425 2275
F 0 "#PWR07" H 7425 2025 50  0001 C CNN
F 1 "GNDREF" H 7675 2000 50  0001 C CNN
F 2 "" H 7425 2275 50  0001 C CNN
F 3 "" H 7425 2275 50  0001 C CNN
	1    7425 2275
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7425 2275 7425 2200
Wire Wire Line
	7425 2200 7325 2200
Wire Wire Line
	7125 2200 6975 2200
Connection ~ 6975 2200
Wire Wire Line
	6975 2200 6975 2050
Wire Wire Line
	6975 2200 6350 2200
Wire Wire Line
	6350 2200 6350 2725
Wire Wire Line
	6350 2725 6425 2725
Wire Wire Line
	8250 2725 7525 2725
Wire Wire Line
	8250 2825 7525 2825
Wire Wire Line
	8250 2925 7525 2925
Wire Wire Line
	8250 3025 7525 3025
Wire Wire Line
	8250 3125 7525 3125
Wire Wire Line
	8250 3225 7525 3225
Wire Wire Line
	8250 3325 7525 3325
Wire Wire Line
	8250 3425 7525 3425
Wire Wire Line
	8250 3525 7525 3525
Wire Wire Line
	8250 3625 7525 3625
Wire Wire Line
	8250 3725 7525 3725
Wire Wire Line
	8250 3825 7525 3825
Wire Wire Line
	8250 3925 7525 3925
Wire Wire Line
	8250 4025 7525 4025
Wire Wire Line
	8250 4125 7525 4125
Wire Wire Line
	8250 4225 7525 4225
Text Label 8100 2725 0    50   ~ 0
HV1
Text Label 8100 2825 0    50   ~ 0
HV2
Text Label 8100 2925 0    50   ~ 0
HV3
Text Label 8100 3025 0    50   ~ 0
HV4
Text Label 8100 3125 0    50   ~ 0
HV5
Text Label 8100 3225 0    50   ~ 0
HV6
Text Label 8100 3325 0    50   ~ 0
HV7
Text Label 8100 3425 0    50   ~ 0
HV8
Text Label 8100 3525 0    50   ~ 0
HV9
Text Label 8050 3625 0    50   ~ 0
HV10
Text Label 8050 3725 0    50   ~ 0
HV11
Text Label 8050 3825 0    50   ~ 0
HV12
Text Label 8050 3925 0    50   ~ 0
HV13
Text Label 8050 4025 0    50   ~ 0
HV14
Text Label 8050 4125 0    50   ~ 0
HV15
Text Label 8050 4225 0    50   ~ 0
HV16
Text Label 8050 4325 0    50   ~ 0
HV17
Text Label 8050 4425 0    50   ~ 0
HV18
Text Label 8050 4525 0    50   ~ 0
HV19
Text Label 8050 4625 0    50   ~ 0
HV20
Text Label 8050 4725 0    50   ~ 0
HV21
Text Label 8050 4825 0    50   ~ 0
HV22
Text Label 8050 4925 0    50   ~ 0
HV23
Text Label 8050 5025 0    50   ~ 0
HV24
Text Label 8050 5125 0    50   ~ 0
HV25
Text Label 8050 5225 0    50   ~ 0
HV26
Text Label 8050 5325 0    50   ~ 0
HV27
Text Label 8050 5425 0    50   ~ 0
HV28
Text Label 8050 5525 0    50   ~ 0
HV29
Text Label 8050 5625 0    50   ~ 0
HV30
Text Label 8050 5725 0    50   ~ 0
HV31
Text Label 8050 5825 0    50   ~ 0
HV32
Connection ~ 3550 1075
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904-TP Q1
U 1 1 661A674F
P 4950 3075
F 0 "Q1" H 5138 3128 60  0000 L CNN
F 1 "3904" H 5138 3022 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5150 3275 60  0001 L CNN
F 3 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 3375 60  0001 L CNN
F 4 "MMBT3904TPMSCT-ND" H 5150 3475 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT3904-TP" H 5150 3575 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5150 3675 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5150 3775 60  0001 L CNN "Family"
F 8 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 3875 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSCT-ND/717395" H 5150 3975 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A SOT23" H 5150 4075 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 5150 4175 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5150 4275 60  0001 L CNN "Status"
	1    4950 3075
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 661ABC25
P 5050 3475
F 0 "#PWR010" H 5050 3225 50  0001 C CNN
F 1 "GNDREF" H 5300 3200 50  0001 C CNN
F 2 "" H 5050 3475 50  0001 C CNN
F 3 "" H 5050 3475 50  0001 C CNN
	1    5050 3475
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 661AC3E7
P 4375 3075
F 0 "R4" V 4325 2850 50  0000 L CNN
F 1 "4K7" V 4325 3150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4305 3075 50  0001 C CNN
F 3 "~" H 4375 3075 50  0001 C CNN
	1    4375 3075
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 661ADA8C
P 4650 3300
F 0 "R5" H 4582 3254 50  0000 R CNN
F 1 "91K" H 4582 3345 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 3300 50  0001 C CNN
F 3 "~" H 4650 3300 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 4650 3300 50  0001 C CNN "Desc"
	1    4650 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR09
U 1 1 661AE2C1
P 4650 3475
F 0 "#PWR09" H 4650 3225 50  0001 C CNN
F 1 "GNDREF" H 4900 3200 50  0001 C CNN
F 2 "" H 4650 3475 50  0001 C CNN
F 3 "" H 4650 3475 50  0001 C CNN
	1    4650 3475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 3275 5050 3475
Wire Wire Line
	4650 3400 4650 3475
Wire Wire Line
	4525 3075 4650 3075
Connection ~ 4650 3075
Wire Wire Line
	4650 3075 4750 3075
Wire Wire Line
	4650 3075 4650 3200
$Comp
L Device:R_Small_US R3
U 1 1 6620785C
P 5050 2675
F 0 "R3" H 4982 2629 50  0000 R CNN
F 1 "91K" H 4982 2720 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 2675 50  0001 C CNN
F 3 "~" H 5050 2675 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 5050 2675 50  0001 C CNN "Desc"
	1    5050 2675
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR08
U 1 1 6620802A
P 5050 2525
F 0 "#PWR08" H 5050 2375 50  0001 C CNN
F 1 "+12V" H 5065 2698 50  0000 C CNN
F 2 "" H 5050 2525 50  0001 C CNN
F 3 "" H 5050 2525 50  0001 C CNN
	1    5050 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2575 5050 2525
Wire Wire Line
	5050 2775 5050 2825
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904-TP Q2
U 1 1 66227F4C
P 4950 4450
F 0 "Q2" H 5138 4503 60  0000 L CNN
F 1 "3904" H 5138 4397 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5150 4650 60  0001 L CNN
F 3 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 4750 60  0001 L CNN
F 4 "MMBT3904TPMSCT-ND" H 5150 4850 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT3904-TP" H 5150 4950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5150 5050 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5150 5150 60  0001 L CNN "Family"
F 8 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 5250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSCT-ND/717395" H 5150 5350 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A SOT23" H 5150 5450 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 5150 5550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5150 5650 60  0001 L CNN "Status"
	1    4950 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR015
U 1 1 66227F56
P 5050 4850
F 0 "#PWR015" H 5050 4600 50  0001 C CNN
F 1 "GNDREF" H 5300 4575 50  0001 C CNN
F 2 "" H 5050 4850 50  0001 C CNN
F 3 "" H 5050 4850 50  0001 C CNN
	1    5050 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 66227F60
P 4375 4450
F 0 "R7" V 4325 4225 50  0000 L CNN
F 1 "4K7" V 4325 4525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4305 4450 50  0001 C CNN
F 3 "~" H 4375 4450 50  0001 C CNN
	1    4375 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 66227F6B
P 4650 4675
F 0 "R8" H 4582 4629 50  0000 R CNN
F 1 "91K" H 4582 4720 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4675 50  0001 C CNN
F 3 "~" H 4650 4675 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 4650 4675 50  0001 C CNN "Desc"
	1    4650 4675
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR014
U 1 1 66227F75
P 4650 4850
F 0 "#PWR014" H 4650 4600 50  0001 C CNN
F 1 "GNDREF" H 4900 4575 50  0001 C CNN
F 2 "" H 4650 4850 50  0001 C CNN
F 3 "" H 4650 4850 50  0001 C CNN
	1    4650 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 4650 5050 4850
Wire Wire Line
	4650 4775 4650 4850
Wire Wire Line
	4525 4450 4650 4450
Connection ~ 4650 4450
Wire Wire Line
	4650 4450 4750 4450
Wire Wire Line
	4650 4450 4650 4575
$Comp
L Device:R_Small_US R6
U 1 1 66227F86
P 5050 4050
F 0 "R6" H 4982 4004 50  0000 R CNN
F 1 "91K" H 4982 4095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 4050 50  0001 C CNN
F 3 "~" H 5050 4050 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 5050 4050 50  0001 C CNN "Desc"
	1    5050 4050
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 66227F90
P 5050 3900
F 0 "#PWR011" H 5050 3750 50  0001 C CNN
F 1 "+12V" H 5065 4073 50  0000 C CNN
F 2 "" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3950 5050 3900
Wire Wire Line
	5050 4150 5050 4200
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904-TP Q3
U 1 1 6626AC20
P 4950 5850
F 0 "Q3" H 5138 5903 60  0000 L CNN
F 1 "3904" H 5138 5797 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5150 6050 60  0001 L CNN
F 3 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 6150 60  0001 L CNN
F 4 "MMBT3904TPMSCT-ND" H 5150 6250 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT3904-TP" H 5150 6350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5150 6450 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5150 6550 60  0001 L CNN "Family"
F 8 "https://www.mccsemi.com/pdf/Products/MMBT3904(SOT-23).pdf" H 5150 6650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSCT-ND/717395" H 5150 6750 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A SOT23" H 5150 6850 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 5150 6950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5150 7050 60  0001 L CNN "Status"
	1    4950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR019
U 1 1 6626AC2A
P 5050 6250
F 0 "#PWR019" H 5050 6000 50  0001 C CNN
F 1 "GNDREF" H 5300 5975 50  0001 C CNN
F 2 "" H 5050 6250 50  0001 C CNN
F 3 "" H 5050 6250 50  0001 C CNN
	1    5050 6250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 6626AC34
P 4375 5850
F 0 "R10" V 4325 5625 50  0000 L CNN
F 1 "4K7" V 4325 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4305 5850 50  0001 C CNN
F 3 "~" H 4375 5850 50  0001 C CNN
	1    4375 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 6626AC3F
P 4650 6075
F 0 "R11" H 4582 6029 50  0000 R CNN
F 1 "91K" H 4582 6120 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 6075 50  0001 C CNN
F 3 "~" H 4650 6075 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 4650 6075 50  0001 C CNN "Desc"
	1    4650 6075
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR018
U 1 1 6626AC49
P 4650 6250
F 0 "#PWR018" H 4650 6000 50  0001 C CNN
F 1 "GNDREF" H 4900 5975 50  0001 C CNN
F 2 "" H 4650 6250 50  0001 C CNN
F 3 "" H 4650 6250 50  0001 C CNN
	1    4650 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 6050 5050 6250
Wire Wire Line
	4650 6175 4650 6250
Wire Wire Line
	4525 5850 4650 5850
Connection ~ 4650 5850
Wire Wire Line
	4650 5850 4750 5850
Wire Wire Line
	4650 5850 4650 5975
$Comp
L Device:R_Small_US R9
U 1 1 6626AC5A
P 5050 5450
F 0 "R9" H 4982 5404 50  0000 R CNN
F 1 "91K" H 4982 5495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 5450 50  0001 C CNN
F 3 "~" H 5050 5450 50  0001 C CNN
F 4 "RES 33K OHM 1% 1/10W 0805" H 5050 5450 50  0001 C CNN "Desc"
	1    5050 5450
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 6626AC64
P 5050 5300
F 0 "#PWR016" H 5050 5150 50  0001 C CNN
F 1 "+12V" H 5065 5473 50  0000 C CNN
F 2 "" H 5050 5300 50  0001 C CNN
F 3 "" H 5050 5300 50  0001 C CNN
	1    5050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5350 5050 5300
Wire Wire Line
	5050 5550 5050 5600
Connection ~ 5050 2825
Wire Wire Line
	5050 2825 5050 2875
Wire Wire Line
	5050 4200 5625 4200
Connection ~ 5050 4200
Wire Wire Line
	5050 4200 5050 4250
Text Label 5225 2825 0    50   ~ 0
OE_12V
Text Label 5275 4200 0    50   ~ 0
CLK_12V
Connection ~ 5050 5600
Wire Wire Line
	5050 5600 5050 5650
Text Label 5275 5600 0    50   ~ 0
DATA_IN_12V
Text Label 5275 6550 0    50   ~ 0
DATA_OUT_12V
Text Label 3025 4550 0    50   ~ 0
DATA_IN
Wire Wire Line
	5050 2825 6425 2825
Wire Wire Line
	5625 3025 5625 4200
Wire Wire Line
	5625 3025 6425 3025
Wire Wire Line
	6425 3125 5750 3125
Wire Wire Line
	5750 3125 5750 5600
Wire Wire Line
	5050 5600 5750 5600
Wire Wire Line
	5875 3225 6425 3225
Wire Wire Line
	2950 4450 4225 4450
Wire Wire Line
	2950 4350 3650 4350
Wire Wire Line
	3650 4350 3650 3075
Wire Wire Line
	3650 3075 4225 3075
Wire Wire Line
	2950 4550 3650 4550
Wire Wire Line
	3650 4550 3650 5850
Wire Wire Line
	3650 5850 4225 5850
Wire Wire Line
	2950 4650 3550 4650
Wire Wire Line
	3550 4650 3550 6550
Wire Wire Line
	3550 6550 5875 6550
Wire Wire Line
	5875 3225 5875 6550
Text Label 3025 4650 0    50   ~ 0
DATA_OUT_12V
Text Label 3025 4350 0    50   ~ 0
OE
Text Label 3025 4450 0    50   ~ 0
CLK
$Comp
L power:GNDREF #PWR013
U 1 1 664D20DD
P 3200 4825
F 0 "#PWR013" H 3200 4575 50  0001 C CNN
F 1 "GNDREF" H 3450 4550 50  0001 C CNN
F 2 "" H 3200 4825 50  0001 C CNN
F 3 "" H 3200 4825 50  0001 C CNN
	1    3200 4825
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR012
U 1 1 664D2858
P 3150 4150
F 0 "#PWR012" H 3150 3900 50  0001 C CNN
F 1 "GNDREF" H 3400 3875 50  0001 C CNN
F 2 "" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0001 C CNN
	1    3150 4150
	0    -1   1    0   
$EndComp
Wire Wire Line
	2950 4750 3200 4750
Wire Wire Line
	3200 4750 3200 4825
Wire Wire Line
	2950 4150 3150 4150
Wire Wire Line
	2950 4050 3200 4050
Wire Wire Line
	3200 1075 3550 1075
Wire Wire Line
	3200 1075 3200 4050
Text Label 3025 4050 0    50   ~ 0
VIN
Text Notes 2525 4075 0    50   ~ 0
Vin 
Text Notes 2525 4175 0    50   ~ 0
Gnd
Text Notes 2525 4375 0    50   ~ 0
OE
Text Notes 2525 4475 0    50   ~ 0
CLK
Text Notes 2375 4575 0    50   ~ 0
Data In
Text Notes 2325 4675 0    50   ~ 0
Data Out
Text Notes 2525 4775 0    50   ~ 0
Gnd
Wire Wire Line
	8250 4325 7525 4325
Wire Wire Line
	8250 4425 7525 4425
Wire Wire Line
	8250 4525 7525 4525
Wire Wire Line
	8250 4625 7525 4625
Wire Wire Line
	8250 4725 7525 4725
Wire Wire Line
	8250 4825 7525 4825
Wire Wire Line
	8250 4925 7525 4925
Wire Wire Line
	8250 5025 7525 5025
Wire Wire Line
	8250 5125 7525 5125
Wire Wire Line
	8250 5225 7525 5225
Wire Wire Line
	8250 5325 7525 5325
Wire Wire Line
	8250 5425 7525 5425
Wire Wire Line
	8250 5525 7525 5525
Wire Wire Line
	8250 5625 7525 5625
Wire Wire Line
	8250 5725 7525 5725
Wire Wire Line
	8250 5825 7525 5825
Text Notes 8750 4400 0    100  ~ 0
HV Outputs\n1-32
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 6657A5B4
P 8450 3125
F 0 "J1" H 8525 3525 50  0000 L CNN
F 1 "Conn_01x10" H 8530 3026 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8450 3125 50  0001 C CNN
F 3 "~" H 8450 3125 50  0001 C CNN
	1    8450 3125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J4
U 1 1 6657B1FF
P 8450 5425
F 0 "J4" H 8525 4925 50  0000 L CNN
F 1 "Conn_01x10" H 8530 5326 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8450 5425 50  0001 C CNN
F 3 "~" H 8450 5425 50  0001 C CNN
	1    8450 5425
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J3
U 1 1 6657C43C
P 8450 4325
F 0 "J3" H 8525 3725 50  0000 L CNN
F 1 "Conn_01x12" H 8530 4226 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 8450 4325 50  0001 C CNN
F 3 "~" H 8450 4325 50  0001 C CNN
	1    8450 4325
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 6622EC0D
P 2750 4350
F 0 "J2" H 2700 3825 50  0000 L CNN
F 1 "Conn_01x08" H 2830 4251 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2750 4350 50  0001 C CNN
F 3 "~" H 2750 4350 50  0001 C CNN
	1    2750 4350
	-1   0    0    -1  
$EndComp
Text Notes 2525 4275 0    50   ~ 0
ENA
Wire Wire Line
	2950 4250 3550 4250
Wire Wire Line
	3550 4250 3550 2975
Wire Wire Line
	3550 2975 3850 2975
Wire Wire Line
	3850 2975 3850 2375
Text Label 3025 4250 0    50   ~ 0
ENA
$Comp
L Device:R_US R12
U 1 1 66262F8F
P 4150 2375
F 0 "R12" V 4100 2150 50  0000 L CNN
F 1 "4K7" V 4100 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 2375 50  0001 C CNN
F 3 "~" H 4150 2375 50  0001 C CNN
	1    4150 2375
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR020
U 1 1 66263D2D
P 4425 2475
F 0 "#PWR020" H 4425 2225 50  0001 C CNN
F 1 "GNDREF" H 4675 2200 50  0001 C CNN
F 2 "" H 4425 2475 50  0001 C CNN
F 3 "" H 4425 2475 50  0001 C CNN
	1    4425 2475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 2375 4425 2375
Wire Wire Line
	4425 2375 4425 2475
Wire Wire Line
	4000 2375 3850 2375
Connection ~ 3850 2375
Wire Wire Line
	3850 2375 3850 1525
$EndSCHEMATC
