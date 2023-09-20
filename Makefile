vendor := $(srctree)/$(src)

ifneq "$(wildcard $(vendor)/qcom)" ""
	subdir-y += qcom
endif
#SOMC_DTS_OVERLAY start
subdir-y += sony
#SOMC_DTS_OVERLAY end
