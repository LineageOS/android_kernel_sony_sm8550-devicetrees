dtbo-$(CONFIG_ARCH_KALAMA) := kalama-camera.dtbo

ifneq ($(CONFIG_MACH_SONY_DEVICE), y)
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

dtb-$(CONFIG_MACH_SONY_DEVICE) += kalama-camera.dtbo
dtbo-$(CONFIG_MACH_SONY_PDX234) += sony/kalama-camera-sensor-pdx234.dtbo
