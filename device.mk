#
# Copyright (C) 2014 The CyanogenMod Project
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
$(call inherit-product-if-exists, vendor/polytron/g450/g450-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera

# Charger
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.usb.vid=18D1 \
    ro.usb.id.charge=F006 \
    ro.usb.id.mtp=4EE6 \
    ro.usb.id.mtp_adb=4EE6 \
    ro.usb.id.ptp=4EE2 \
    ro.usb.id.ptp_adb=4EE2 \
    ro.usb.id.ums=9015 \
    ro.usb.id.ums_adb=9015

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    CNEService \
    cneapiclient \
    com.quicinc.cne

# DPM
PRODUCT_PACKAGES += \
    com.qti.dpmframework \
    dpmapi

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

# IMS
PRODUCT_PACKAGES += \
    IMSEnabler \
    init.qti.ims.sh \
    ims \
    imscmlibrary

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ims/imscm.xml:system/etc/permissions/imscm.xml \
    $(LOCAL_PATH)/configs/ims/ims.xml:system/etc/permissions/ims.xml \
    $(LOCAL_PATH)/configs/ims/qti_permissions.xml:system/etc/permissions/qti_permissions.xml


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# irqbalance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/etc/msm_irqbalance.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle \
    fstab.qcom \
    init.cne.rc \
    init.target.rc \
    init.qcom.usb.rc

# Recovery
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(LOCAL_PATH)/g450-releasekey

# Sensor HAL
PRODUCT_PACKAGES += \
    calmodule.cfg \
    libcalmodule_memsic \
    sensors.msm8916

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# WLAN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Inherit the rest from msm8916-common
$(call inherit-product, device/cyanogen/msm8916-common/msm8916.mk)
