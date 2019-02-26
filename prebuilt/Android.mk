LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := Lawnchair
LOCAL_SRC_FILES     := app/Lawnchair.apk
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

# a wrapper for curl which provides wget syntax, for compatibility
include $(CLEAR_VARS)
LOCAL_MODULE := wget
LOCAL_SRC_FILES := bin/wget
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)
