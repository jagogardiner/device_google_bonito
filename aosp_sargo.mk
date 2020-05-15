#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit AOSP config
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
$(call inherit-product, device/google/bonito/device-sargo.mk)

# Inherit Evolution-X product configuration
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Android
PRODUCT_NAME := aosp_sargo
PRODUCT_DEVICE := sargo
PRODUCT_MODEL := Pixel 3a

EVO_DONATE_URL := https://www.paypal.me/nysascape
EVO_MAINTAINER := nysascape
EVO_SUPPORT_URL := https://t.me/EvolutionXPixel
CUSTOM_BUILD_TYPE := OFFICIAL

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Inherit Google extras
$(call inherit-product, vendor/google_extras/sargo/sargo-vendor.mk)

# Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    BUILD_FINGERPRINT=google/sargo/sargo:10/QQ2A.200501.001.B2/6352890:user/release-keys \
    PRIVATE_BUILD_DESC="sargo-user 10 QQ2A.200501.001.B2 6352890 release-keys"
