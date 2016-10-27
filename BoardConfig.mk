#
# Copyright (C) 2016 The CyanogenMod Project
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

FORCE_32_BIT := true

-include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/polytron/g450

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Kernel
TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8916
TARGET_KERNEL_CONFIG := cyanogenmod_g450_defconfig
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_CAMERA_SENSORS := \
    gc0339_8916 \
    ov5648_oty5f03

TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# DPM NSRM Feature
TARGET_LDPRELOAD := libNimsWrap.so


# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6575029248

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_F2FS := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/polytron/g450/BoardConfigVendor.mk
