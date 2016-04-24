LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_SRC_FILES := init_msm7x27a-common.c
LOCAL_MODULE := libinit_msm7x27a-common
include $(BUILD_STATIC_LIBRARY)
