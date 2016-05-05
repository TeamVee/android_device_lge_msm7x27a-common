LOCAL_PATH := $(call my-dir)

# Remove CMUpdater - Not need
LOCAL_OVERRIDES_PACKAGES := CMUpdater

# Remove Email - 14,4MB
LOCAL_OVERRIDES_PACKAGES := Email

# Remove Exchange2 - 6,6MB
LOCAL_OVERRIDES_PACKAGES := Exchange2

# Remove CMWallpapers - 9,7MB
LOCAL_OVERRIDES_PACKAGES := CMWallpapers

# Remove LatinIME - 49,7MB
# Replace with LatinIME of Google - 24,8MB
# com.google.android.inputmethod.latin_4.1.23163.2622203.apk
include $(CLEAR_VARS)
LOCAL_MODULE       := LatinIME
LOCAL_SRC_FILES    := app/$(LOCAL_MODULE).apk
LOCAL_OVERRIDES_PACKAGES := LatinIME
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH  := system/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
include $(BUILD_PREBUILT)
