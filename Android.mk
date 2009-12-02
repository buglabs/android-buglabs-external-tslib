LOCAL_PATH := $(call my-dir)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		etc \
		plugins \
		src \
		tests \
	))

include $(subdirs)
