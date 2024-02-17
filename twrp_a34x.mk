#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a34x device
$(call inherit-product, device/samsung/a34x/device.mk)

PRODUCT_DEVICE := a34x
PRODUCT_NAME := twrp_a34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A346M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a34xub-user 12 SP1A.210812.016 A346MUBS4BWL3 release-keys"

BUILD_FINGERPRINT := samsung/a34xub/a34x:12/SP1A.210812.016/A346MUBS4BWL3:user/release-keys
