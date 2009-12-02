LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

INCLUDES += \
	external/tslib \
	external/tslib/src \
	external/tslib/tests

CFLAGS += -DTS_POINTERCAL=\"/system/etc/pointercal\" \
	  -DTS_ENV=\"/system/etc/ts.env\" \
	  -DGCC_HASCLASSVISIBILITY

SRC_FILES += fbutils.c \
	     font_8x8.c \
	     font_8x16.c

SHARED_LIBRARIES = libts

LOCAL_MODULE := ts_test
LOCAL_SRC_FILES = ts_test.c \
		  $(SRC_FILES)
LOCAL_C_INCLUDES = $(INCLUDES)
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := ts_calibrate
LOCAL_SRC_FILES = ts_calibrate.c \
		  testutils.c \
		  $(SRC_FILES)
LOCAL_C_INCLUDES = $(INCLUDES)
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := ts_print
LOCAL_SRC_FILES = ts_print.c
LOCAL_C_INCLUDES = $(INCLUDES)
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := ts_print_raw
LOCAL_SRC_FILES = ts_print_raw.c
LOCAL_C_INCLUDES = $(INCLUDES)
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := ts_harvest
LOCAL_SRC_FILES = ts_harvest.c \
		  testutils.c \
		  $(SRC_FILES)
LOCAL_C_INCLUDES = $(INCLUDES)
LOCAL_CFLAGS = $(CFLAGS)
LOCAL_SHARED_LIBRARIES = $(SHARED_LIBRARIES)
include $(BUILD_EXECUTABLE)

