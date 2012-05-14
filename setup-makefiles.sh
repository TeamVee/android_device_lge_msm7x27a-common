#!/bin/sh

# Copyright (C) 2012 The CyanogenMod Project
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

VENDOR=lge
DEVICE=p700

mkdir -p ../../../vendor/$VENDOR/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    MagicSmokeWallpapers \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

\$(call inherit-product, vendor/__VENDOR__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# HAL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/lights.msm7x27a.so:system/lib/hw/lights.msm7x27a.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/sensors.u0.so:system/lib/hw/sensors.u0.so

# Sensors daemon
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/sensord:system/bin/sensord

# EGL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

## Camera
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libchromatix_hi542_preview.so:system/lib/libchromatix_hi542_preview.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so

## Wifi
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwfcu.so:system/lib/libwfcu.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwcnftm.so:system/lib/libwcnftm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqdp.so:system/lib/libqdp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqdi.so:system/lib/libqdi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgsecclk.so:system/lib/liblgsecclk.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblge_security.so:system/lib/liblge_security.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libidl.so:system/lib/libidl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmiproxy:system/bin/qmiproxy \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVp8Dec.so:system/lib/libOmxVp8Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxIttiamVdec.so:system/lib/libOmxIttiamVdec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so

# BT
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init

# NFC
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/nfc.default.so:system/lib/hw/nfc.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

# Audio
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false
EOF

