#
# Makefile for sensor chip drivers.
#

obj-$(CONFIG_HWMON)		+= hwmon.o
obj-$(CONFIG_HWMON_VID)		+= hwmon-vid.o

# APCI drivers
obj-$(CONFIG_SENSORS_ACPI_POWER) += acpi_power_meter.o
obj-$(CONFIG_SENSORS_ATK0110)	+= asus_atk0110.o

# Native drivers
# asb100, then w83781d go first, as they can override other drivers' addresses.
obj-$(CONFIG_SENSORS_ASB100)	+= asb100.o
obj-$(CONFIG_SENSORS_W83627HF)	+= w83627hf.o
obj-$(CONFIG_SENSORS_W83792D)	+= w83792d.o
obj-$(CONFIG_SENSORS_W83793)	+= w83793.o
obj-$(CONFIG_SENSORS_W83795)	+= w83795.o
obj-$(CONFIG_SENSORS_W83781D)	+= w83781d.o
obj-$(CONFIG_SENSORS_W83791D)	+= w83791d.o

obj-$(CONFIG_SENSORS_AB8500)	+= abx500.o ab8500.o
obj-$(CONFIG_SENSORS_ABITUGURU)	+= abituguru.o
obj-$(CONFIG_SENSORS_ABITUGURU3)+= abituguru3.o
obj-$(CONFIG_SENSORS_AD7314)	+= ad7314.o
obj-$(CONFIG_SENSORS_AD7414)	+= ad7414.o
obj-$(CONFIG_SENSORS_AD7418)	+= ad7418.o
obj-$(CONFIG_SENSORS_ADC128D818) += adc128d818.o
obj-$(CONFIG_SENSORS_ADCXX)	+= adcxx.o
obj-$(CONFIG_SENSORS_ADM1021)	+= adm1021.o
obj-$(CONFIG_SENSORS_ADM1025)	+= adm1025.o
obj-$(CONFIG_SENSORS_ADM1026)	+= adm1026.o
obj-$(CONFIG_SENSORS_ADM1029)	+= adm1029.o
obj-$(CONFIG_SENSORS_ADM1031)	+= adm1031.o
obj-$(CONFIG_SENSORS_ADM9240)	+= adm9240.o
obj-$(CONFIG_SENSORS_ADS1015)	+= ads1015.o
obj-$(CONFIG_SENSORS_ADS7828)	+= ads7828.o
obj-$(CONFIG_SENSORS_ADS7871)	+= ads7871.o
obj-$(CONFIG_SENSORS_ADT7X10)	+= adt7x10.o
obj-$(CONFIG_SENSORS_ADT7310)	+= adt7310.o
obj-$(CONFIG_SENSORS_ADT7410)	+= adt7410.o
obj-$(CONFIG_SENSORS_ADT7411)	+= adt7411.o
obj-$(CONFIG_SENSORS_ADT7462)	+= adt7462.o
obj-$(CONFIG_SENSORS_ADT7470)	+= adt7470.o
obj-$(CONFIG_SENSORS_ADT7475)	+= adt7475.o
obj-$(CONFIG_SENSORS_APPLESMC)	+= applesmc.o
obj-$(CONFIG_SENSORS_ASC7621)	+= asc7621.o
obj-$(CONFIG_SENSORS_ATXP1)	+= atxp1.o
obj-$(CONFIG_SENSORS_CORETEMP)	+= coretemp.o
obj-$(CONFIG_SENSORS_DA9052_ADC)+= da9052-hwmon.o
obj-$(CONFIG_SENSORS_DA9055)+= da9055-hwmon.o
obj-$(CONFIG_SENSORS_DME1737)	+= dme1737.o
obj-$(CONFIG_SENSORS_DS620)	+= ds620.o
obj-$(CONFIG_SENSORS_DS1621)	+= ds1621.o
obj-$(CONFIG_SENSORS_EMC1403)	+= emc1403.o
obj-$(CONFIG_SENSORS_EMC2103)	+= emc2103.o
obj-$(CONFIG_SENSORS_EMC6W201)	+= emc6w201.o
obj-$(CONFIG_SENSORS_F71805F)	+= f71805f.o
obj-$(CONFIG_SENSORS_F71882FG)	+= f71882fg.o
obj-$(CONFIG_SENSORS_F75375S)	+= f75375s.o
obj-$(CONFIG_SENSORS_FAM15H_POWER) += fam15h_power.o
obj-$(CONFIG_SENSORS_FSCHMD)	+= fschmd.o
obj-$(CONFIG_SENSORS_G760A)	+= g760a.o
obj-$(CONFIG_SENSORS_G762)	+= g762.o
obj-$(CONFIG_SENSORS_GL518SM)	+= gl518sm.o
obj-$(CONFIG_SENSORS_GL520SM)	+= gl520sm.o
obj-$(CONFIG_SENSORS_GPIO_FAN)	+= gpio-fan.o
obj-$(CONFIG_SENSORS_HIH6130)	+= hih6130.o
obj-$(CONFIG_SENSORS_HTU21)	+= htu21.o
obj-$(CONFIG_SENSORS_ULTRA45)	+= ultra45_env.o
obj-$(CONFIG_SENSORS_I5500)	+= i5500_temp.o
obj-$(CONFIG_SENSORS_I5K_AMB)	+= i5k_amb.o
obj-$(CONFIG_SENSORS_IBMAEM)	+= ibmaem.o
obj-$(CONFIG_SENSORS_IBMPEX)	+= ibmpex.o
obj-$(CONFIG_SENSORS_IBMPOWERNV)+= ibmpowernv.o
obj-$(CONFIG_SENSORS_IIO_HWMON) += iio_hwmon.o
obj-$(CONFIG_SENSORS_INA209)	+= ina209.o
obj-$(CONFIG_SENSORS_INA2XX)	+= ina2xx.o
obj-$(CONFIG_SENSORS_IT87)	+= it87.o
obj-$(CONFIG_SENSORS_JC42)	+= jc42.o
obj-$(CONFIG_SENSORS_JZ4740)	+= jz4740-hwmon.o
obj-$(CONFIG_SENSORS_K8TEMP)	+= k8temp.o
obj-$(CONFIG_SENSORS_K10TEMP)	+= k10temp.o
obj-$(CONFIG_SENSORS_LINEAGE)	+= lineage-pem.o
obj-$(CONFIG_SENSORS_LM63)	+= lm63.o
obj-$(CONFIG_SENSORS_LM70)	+= lm70.o
obj-$(CONFIG_SENSORS_LM73)	+= lm73.o
obj-$(CONFIG_SENSORS_LM75)	+= lm75.o
obj-$(CONFIG_SENSORS_LM77)	+= lm77.o
obj-$(CONFIG_SENSORS_LM78)	+= lm78.o
obj-$(CONFIG_SENSORS_LM80)	+= lm80.o
obj-$(CONFIG_SENSORS_LM83)	+= lm83.o
obj-$(CONFIG_SENSORS_LM85)	+= lm85.o
obj-$(CONFIG_SENSORS_LM87)	+= lm87.o
obj-$(CONFIG_SENSORS_LM90)	+= lm90.o
obj-$(CONFIG_SENSORS_LM92)	+= lm92.o
obj-$(CONFIG_SENSORS_LM93)	+= lm93.o
obj-$(CONFIG_SENSORS_LM95234)	+= lm95234.o
obj-$(CONFIG_SENSORS_LM95241)	+= lm95241.o
obj-$(CONFIG_SENSORS_LM95245)	+= lm95245.o
obj-$(CONFIG_SENSORS_LTC2945)	+= ltc2945.o
obj-$(CONFIG_SENSORS_LTC4151)	+= ltc4151.o
obj-$(CONFIG_SENSORS_LTC4215)	+= ltc4215.o
obj-$(CONFIG_SENSORS_LTC4222)	+= ltc4222.o
obj-$(CONFIG_SENSORS_LTC4245)	+= ltc4245.o
obj-$(CONFIG_SENSORS_LTC4260)	+= ltc4260.o
obj-$(CONFIG_SENSORS_LTC4261)	+= ltc4261.o
obj-$(CONFIG_SENSORS_MAX1111)	+= max1111.o
obj-$(CONFIG_SENSORS_MAX16065)	+= max16065.o
obj-$(CONFIG_SENSORS_MAX1619)	+= max1619.o
obj-$(CONFIG_SENSORS_MAX1668)	+= max1668.o
obj-$(CONFIG_SENSORS_MAX197)	+= max197.o
obj-$(CONFIG_SENSORS_MAX6639)	+= max6639.o
obj-$(CONFIG_SENSORS_MAX6642)	+= max6642.o
obj-$(CONFIG_SENSORS_MAX6650)	+= max6650.o
obj-$(CONFIG_SENSORS_MAX6697)	+= max6697.o
obj-$(CONFIG_SENSORS_MC13783_ADC)+= mc13783-adc.o
obj-$(CONFIG_SENSORS_MCP3021)	+= mcp3021.o
obj-$(CONFIG_SENSORS_MENF21BMC_HWMON) += menf21bmc_hwmon.o
obj-$(CONFIG_SENSORS_NCT6683)	+= nct6683.o
obj-$(CONFIG_SENSORS_NCT6775)	+= nct6775.o
obj-$(CONFIG_SENSORS_NCT7802)	+= nct7802.o
obj-$(CONFIG_SENSORS_NTC_THERMISTOR)	+= ntc_thermistor.o
obj-$(CONFIG_SENSORS_PC87360)	+= pc87360.o
obj-$(CONFIG_SENSORS_PC87427)	+= pc87427.o
obj-$(CONFIG_SENSORS_PCF8591)	+= pcf8591.o
obj-$(CONFIG_SENSORS_POWR1220)  += powr1220.o
obj-$(CONFIG_SENSORS_PWM_FAN)	+= pwm-fan.o
obj-$(CONFIG_SENSORS_S3C)	+= s3c-hwmon.o
obj-$(CONFIG_SENSORS_SCH56XX_COMMON)+= sch56xx-common.o
obj-$(CONFIG_SENSORS_SCH5627)	+= sch5627.o
obj-$(CONFIG_SENSORS_SCH5636)	+= sch5636.o
obj-$(CONFIG_SENSORS_SHT15)	+= sht15.o
obj-$(CONFIG_SENSORS_SHT21)	+= sht21.o
obj-$(CONFIG_SENSORS_SHTC1)	+= shtc1.o
obj-$(CONFIG_SENSORS_SIS5595)	+= sis5595.o
obj-$(CONFIG_SENSORS_SMM665)	+= smm665.o
obj-$(CONFIG_SENSORS_SMSC47B397)+= smsc47b397.o
obj-$(CONFIG_SENSORS_SMSC47M1)	+= smsc47m1.o
obj-$(CONFIG_SENSORS_SMSC47M192)+= smsc47m192.o
obj-$(CONFIG_SENSORS_AMC6821)	+= amc6821.o
obj-$(CONFIG_SENSORS_THMC50)	+= thmc50.o
obj-$(CONFIG_SENSORS_TMP102)	+= tmp102.o
obj-$(CONFIG_SENSORS_TMP103)	+= tmp103.o
obj-$(CONFIG_SENSORS_TMP401)	+= tmp401.o
obj-$(CONFIG_SENSORS_TMP421)	+= tmp421.o
obj-$(CONFIG_SENSORS_TWL4030_MADC)+= twl4030-madc-hwmon.o
obj-$(CONFIG_SENSORS_VEXPRESS)	+= vexpress.o
obj-$(CONFIG_SENSORS_VIA_CPUTEMP)+= via-cputemp.o
obj-$(CONFIG_SENSORS_VIA686A)	+= via686a.o
obj-$(CONFIG_SENSORS_VT1211)	+= vt1211.o
obj-$(CONFIG_SENSORS_VT8231)	+= vt8231.o
obj-$(CONFIG_SENSORS_W83627EHF)	+= w83627ehf.o
obj-$(CONFIG_SENSORS_W83L785TS)	+= w83l785ts.o
obj-$(CONFIG_SENSORS_W83L786NG)	+= w83l786ng.o
obj-$(CONFIG_SENSORS_WM831X)	+= wm831x-hwmon.o
obj-$(CONFIG_SENSORS_WM8350)	+= wm8350-hwmon.o

obj-$(CONFIG_PMBUS)		+= pmbus/

ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG

