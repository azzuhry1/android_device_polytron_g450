# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, device/polytron/g450/full_g450.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_g450
BOARD_VENDOR := polytron
PRODUCT_DEVICE := g450

PRODUCT_GMS_CLIENTID_BASE := android-google

TARGET_VENDOR_PRODUCT_NAME := Polytron
TARGET_VENDOR_DEVICE_NAME := G450
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=G450 PRODUCT_NAME=G450

## Use the latest approved GMS identifiers unless running a signed build

