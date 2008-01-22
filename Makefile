#
# Makefile for sensor chip drivers.
#

obj-$(CONFIG_HWMON)		+= hwmon.o
obj-$(CONFIG_HWMON_VID)		+= hwmon-vid.o

# asb100, then w83781d go first, as they can override other drivers' addresses.
obj-$(CONFIG_SENSORS_ASB100)	+= asb100.o
obj-$(CONFIG_SENSORS_W83627HF)	+= w83627hf.o
obj-$(CONFIG_SENSORS_W83792D)	+= w83792d.o
obj-$(CONFIG_SENSORS_W83793)	+= w83793.o
obj-$(CONFIG_SENSORS_W83781D)	+= w83781d.o
obj-$(CONFIG_SENSORS_W83791D)	+= w83791d.o

obj-$(CONFIG_SENSORS_ABITUGURU)	+= abituguru.o
obj-$(CONFIG_SENSORS_ABITUGURU3)+= abituguru3.o
obj-$(CONFIG_SENSORS_AD7418)	+= ad7418.o
obj-$(CONFIG_SENSORS_ADM1021)	+= adm1021.o
obj-$(CONFIG_SENSORS_ADM1025)	+= adm1025.o
obj-$(CONFIG_SENSORS_ADM1026)	+= adm1026.o
obj-$(CONFIG_SENSORS_ADM1029)	+= adm1029.o
obj-$(CONFIG_SENSORS_ADM1031)	+= adm1031.o
obj-$(CONFIG_SENSORS_ADM9240)	+= adm9240.o
obj-$(CONFIG_SENSORS_ADS7828)	+= ads7828.o
obj-$(CONFIG_SENSORS_ADT7470)	+= adt7470.o
obj-$(CONFIG_SENSORS_APPLESMC)	+= applesmc.o
obj-$(CONFIG_SENSORS_AMS)	+= ams/
obj-$(CONFIG_SENSORS_ATXP1)	+= atxp1.o
obj-$(CONFIG_SENSORS_CORETEMP)	+= coretemp.o
obj-$(CONFIG_SENSORS_DME1737)	+= dme1737.o
obj-$(CONFIG_SENSORS_DS1621)	+= ds1621.o
obj-$(CONFIG_SENSORS_F71805F)	+= f71805f.o
obj-$(CONFIG_SENSORS_F71882FG)	+= f71882fg.o
obj-$(CONFIG_SENSORS_F75375S)	+= f75375s.o
obj-$(CONFIG_SENSORS_FSCHER)	+= fscher.o
obj-$(CONFIG_SENSORS_FSCHMD)	+= fschmd.o
obj-$(CONFIG_SENSORS_FSCPOS)	+= fscpos.o
obj-$(CONFIG_SENSORS_GL518SM)	+= gl518sm.o
obj-$(CONFIG_SENSORS_GL520SM)	+= gl520sm.o
obj-$(CONFIG_SENSORS_HDAPS)	+= hdaps.o
obj-$(CONFIG_SENSORS_I5K_AMB)	+= i5k_amb.o
obj-$(CONFIG_SENSORS_IBMPEX)	+= ibmpex.o
obj-$(CONFIG_SENSORS_IT87)	+= it87.o
obj-$(CONFIG_SENSORS_K8TEMP)	+= k8temp.o
obj-$(CONFIG_SENSORS_LM63)	+= lm63.o
obj-$(CONFIG_SENSORS_LM70)	+= lm70.o
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
obj-$(CONFIG_SENSORS_MAX1619)	+= max1619.o
obj-$(CONFIG_SENSORS_MAX6650)	+= max6650.o
obj-$(CONFIG_SENSORS_PC87360)	+= pc87360.o
obj-$(CONFIG_SENSORS_PC87427)	+= pc87427.o
obj-$(CONFIG_SENSORS_SIS5595)	+= sis5595.o
obj-$(CONFIG_SENSORS_SMSC47B397)+= smsc47b397.o
obj-$(CONFIG_SENSORS_SMSC47M1)	+= smsc47m1.o
obj-$(CONFIG_SENSORS_SMSC47M192)+= smsc47m192.o
obj-$(CONFIG_SENSORS_THMC50)	+= thmc50.o
obj-$(CONFIG_SENSORS_VIA686A)	+= via686a.o
obj-$(CONFIG_SENSORS_VT1211)	+= vt1211.o
obj-$(CONFIG_SENSORS_VT8231)	+= vt8231.o
obj-$(CONFIG_SENSORS_W83627EHF)	+= w83627ehf.o
obj-$(CONFIG_SENSORS_W83L785TS)	+= w83l785ts.o
obj-$(CONFIG_SENSORS_W83L786NG)	+= w83l786ng.o

ifeq ($(CONFIG_HWMON_DEBUG_CHIP),y)
EXTRA_CFLAGS += -DDEBUG
endif

