dtbo-$(CONFIG_ARCH_KALAMA) := kalama-camera.dtbo

ifeq ($(CONFIG_MACH_SONY_PDX234),y)
SOMC_TARGET_PRODUCT := pdx234
endif
ifeq ($(CONFIG_MACH_SONY_PDX237),y)
SOMC_TARGET_PRODUCT := pdx237
endif
SOMC_TARGET_OPERATOR := generic
SOMC_PLATFORM := yodo

ifeq ($(SOMC_PLATFORM), yodo)

ifeq ($(SOMC_TARGET_PRODUCT),pdx234)
dtb-$(CONFIG_ARCH_KALAMA) += kalama-camera.dtbo

dtbo-$(CONFIG_ARCH_KALAMA)		+= kalama-camera-sensor-pdx234.dtbo
endif
ifeq ($(SOMC_TARGET_PRODUCT),pdx237)
dtb-$(CONFIG_ARCH_KALAMA) += kalama-camera.dtbo

dtbo-$(CONFIG_ARCH_KALAMA)		+= kalama-camera-sensor-pdx237.dtbo
endif

else

dtbo-$(CONFIG_ARCH_KALAMA) += kalama-camera-sensor-cdp.dtbo \
				kalama-camera-sensor-mtp.dtbo \
				kalama-camera-sensor-qrd.dtbo \
				kalama-camera-sensor-hdk.dtbo \
				kalama-sg-hhg-camera.dtbo \
				kalama-sg-hhg-camera-sensor.dtbo

dtbo-$(CONFIG_ARCH_CROW) += crow-camera.dtbo \
				crow-camera-sensor-idp.dtbo \
				crow-camera-sensor-qrd.dtbo
endif
