# Copyright (C) 2016 The Android Open Source Project
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

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device specific files
$(call inherit-product, device/samsung/hllte/device.mk)

# HLLTE vendor
$(call inherit-product-if-exists, vendor/samsung/hllte/hllte-vendor.mk)

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := aosp_hllte
PRODUCT_DEVICE := hllte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N7505
PRODUCT_MANUFACTURER := samsung

