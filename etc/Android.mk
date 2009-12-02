LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
local_target_dir := $(TARGET_OUT)/etc
LOCAL_MODULE := ts.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
local_target_dir := $(TARGET_OUT)/etc
LOCAL_MODULE := pointercal
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
