#
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := laurel_sprout

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := laurel_sprout
PRODUCT_NAME := omni_laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="laurel_sprout" \
    TARGET_DEVICE="laurel_sprout"

BUILD_FINGERPRINT := "Xiaomi/laurel_sprout/laurel_sprout:9/PKQ1.190416.001/V10.3.4.0.PFQMIXM:user/release-keys"
BUILD_NUMBER := "V10.3.4.0.PFQMIXM"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.build.date.utc \
    ro.bootimage.build.date.utc

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2025-12-31
