KALAMA_BASE_DTB += ../qcom/kalama.dtb ../qcom/kalama-v2.dtb ../qcom/kalama-sg.dtb ../qcom/kalama-qcm.dtb
KALAMA_APQ_BASE_DTB += ../qcom/kalamap.dtb ../qcom/kalamap-v2.dtb ../qcom/kalamap-sg.dtb ../qcom/kalamap-qcs.dtb

ifeq ($(CONFIG_MACH_SONY_PDX234),y)
SOMC_KALAMA_BOARDS += \
	kalama-yodo-pdx234_generic-overlay.dtbo
else ifeq ($(CONFIG_MACH_SONY_PDX237),y)
SOMC_KALAMA_BOARDS += \
	kalama-yodo-pdx237_generic-overlay.dtbo
endif

kalama-overlays-dtb-y += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB) $(KALAMA_APQ_BASE_DTB)
kalama-dtb-y += $(SOMC_KALAMA_BOARDS) $(KALAMA_BASE_DTB) $(KALAMA_APQ_BASE_DTB)
dtb-y += $(kalama-dtb-y)

always-y	:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
