#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/veux

# Inherit from sm6375-common
include device/xiaomi/veux-common/BoardConfigCommon.mk

# Build Broken
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
ALLOW_MISSING_DEPENDENCIES := true
RELAX_USES_LIBRARY_CHECK := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_veux
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_veux

# OTA assert
TARGET_OTA_ASSERT_DEVICE := peux,veux

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/BoardConfigVendor.mk
