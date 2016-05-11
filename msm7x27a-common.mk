# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common-vendor.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/msm7x27a-common/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.lge-shared.rc:root/init.lge-shared.rc \
    $(LOCAL_PATH)/rootdir/root/init.lge.usb.rc:root/init.lge.usb.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# SoftAP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Wlan
ifneq (exists, $(shell test -d $(TOP)/vendor/qcom/proprietary/wlan/volans && echo exists))
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wlan/wlan.ko:system/lib/modules/wlan.ko \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
endif

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Special Google Media Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# display HALS
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a

# off-mode charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libdashplayer

# Gps hal
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a

# Camera Hal
PRODUCT_PACKAGES += \
    camera.msm7x27a

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# audio 
PRODUCT_PACKAGES += \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    libaudio-resampler

# light hal
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Radio properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=0 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.ril_class=JSRQualcommRIL \
    ro.telephony.ril.config=skippinpukcount,simactivation

# Qcom properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=false \
    com.qc.hardware=true \
    debug.gralloc.map_fb_memory=1 \
    debug.hwc.fakevsync=1

# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# For userdebug builds
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=false \
    ro.adb.secure=false
endif

# Use Hardware Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1

# Media StageFright
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Vendor Lib
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter="balanced" \
    dalvik.vm.dex2oat-flags="--no-watch-dog" \
    dalvik.vm.image-dex2oat-filter="speed"

PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := --compiler-filter=interpret-only
$(call add-product-dex-preopt-module-config,services,--compiler-filter=space)

# Force Camera Portability API, since newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += camera2.portability.force_api="1"

# For applications to determine if they should turn off specific memory-intensive
# features that work poorly on low-memory devices.
PRODUCT_PROPERTY_OVERRIDES += ro.config.low_ram="true"
PRODUCT_PROPERTY_OVERRIDES += persist.sys.force_highendgfx="true"

# Disable atlas services on low-ram targets
PRODUCT_PROPERTY_OVERRIDES += config.disable_atlas="true"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Google Keyboard
PRODUCT_PACKAGES += GoogleLatinIME

# WiFi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    libQWiFiSoftApCfg \
    libnetcmdiface

# Stlport
PRODUCT_PACKAGES +=  libstlport
