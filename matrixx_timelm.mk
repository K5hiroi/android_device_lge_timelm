#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/lge/timelm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := matrixx_timelm
PRODUCT_DEVICE := timelm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V600

# Matrixx Flags
MATRIXX_MAINTAINER := K5hiroi
TARGET_INCLUDE_MATLOG := false
TARGET_CUSTOM_UDFPS := true
WITH_GMS := false
WITH_BCR := false
$(call soong_config_set,surfaceflinger,frame_rate_category_high,60)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,30)
SURFACE_FLINGER_BOOST := true
TARGET_OPTIMIZED_DEXOPT := true
BYPASS_CHARGE_SUPPORTED := false
HBM_SUPPORTED := false
USE_REALITY_ENGINE := true
PRODUCT_NO_CAMERA := true

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=timelm \
    BuildDesc="timelm-user 13 TKQ1.220829.002 2318902104908 release-keys" \
    BuildFingerprint=lge/timelm/timelm:13/TKQ1.220829.002/2318902104908:user/release-keys
