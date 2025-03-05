#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/realme/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX3371

# Assert
TARGET_OTA_ASSERT_DEVICE := rmx3371,RMX3371,RE54E4L1

# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
ifeq (,$(filter true, $(WITHOUT_RESERVED_SIZE) $(WITH_GMS)))
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 840000000
endif
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 11270094848 # (BOARD_SUPER_PARTITION_SIZE - 4194304) 4MiB overhead
BOARD_SUPER_PARTITION_SIZE := 11274289152

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/realme/RMX3371/BoardConfigVendor.mk
