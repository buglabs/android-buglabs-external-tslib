LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

C_INCLUDES += \
	external/tslib \
	external/tslib/src \
	external/tslib/plugins

CFLAGS += -DTS_POINTERCAL=\"/data/system/tslib/pointercal\" \
	  -DTS_ENV=\"/system/etc/ts.env\" \
	  -DTSLIB_INTERNAL \
	  -DGCC_HASCLASSVISIBILITY

LOCAL_MODULE:= linear
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = linear.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= dejitter
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = dejitter.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= variance
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = variance.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= pthres
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = pthres.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= input-raw
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = input-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= galax
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = galax-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= arctic2
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = arctic2-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= corgi
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = corgi-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= collie
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = collie-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= h3600
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = h3600-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= linear-h2200
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = linear-h2200.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= mk712
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = mk712-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= tatung
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = tatung-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= touchkit
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = touchkit-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= ucb1x00
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_C_INCLUDES = $(C_INCLUDES)
LOCAL_SRC_FILES = ucb1x00-raw.c
LOCAL_SHARED_LIBRARIES += libts
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/ts
include $(BUILD_SHARED_LIBRARY)

