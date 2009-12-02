LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	ts_attach.c \
	ts_close.c \
	ts_config.c \
	ts_error.c \
	ts_fd.c \
	ts_load_module.c \
	ts_open.c \
	ts_parse_vars.c \
	ts_read.c \
	ts_read_raw.c

#include $(LOCAL_PATH)/../android-config.mk
LOCAL_CFLAGS += -DPLUGIN_DIR=\"/system/lib/ts\" \
		-DTS_CONF=\"/system/etc/ts.conf\" \
		-DTSLIB_INTERNAL
LOCAL_C_INCLUDES += \
	external/tslib \
	external/tslib/src

LOCAL_SHARED_LIBRARIES += libdl
LOCAL_PRELINK_MODULE := false

LOCAL_MODULE:= libts

include $(BUILD_SHARED_LIBRARY)

