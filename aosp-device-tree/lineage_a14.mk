#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a14 device
$(call inherit-product, device/samsung/a14/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := a14
PRODUCT_NAME := lineage_a14
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A145F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a14nsxx-user 14 UP1A.231005.007 A145FXXS9CYE1 release-keys" \
    BuildFingerprint=samsung/a14nsxx/a14:14/UP1A.231005.007/A145FXXS9CYE1:user/release-keys
