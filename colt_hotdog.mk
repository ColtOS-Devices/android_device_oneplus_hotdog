#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/colt/config/common.mk)

# Inherit GApps
$(call inherit-product, vendor/google/gms/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := colt_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7T Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TPro/OnePlus7TPro:10/QKQ1.190716.003/2011052221:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7TPro \
    PRODUCT_NAME=OnePlus7TPro \
    PRIVATE_BUILD_DESC="OnePlus7TPro_EEA-user 10 QKQ1.190716.003 2011052221 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

COLT_BUILD_TYPE := OFFICIAL

# Device maintainer and CPU Information
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.colt.maintainer=Mady51 \
    ro.colt.cpu=SM8150
