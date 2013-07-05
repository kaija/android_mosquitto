LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call all-c-files-under, mosquitto-1.1.3/lib)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/mosquitto-1.1.3
LOCAL_C_INCLUDES += $(LOCAL_PATH)/mosquitto-1.1.3/lib

LOCAL_CFLAGS += -D__ANDROID__

LOCAL_SHARED_LIBRARIES +=
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libmosquitto
#LOCAL_ADDITIONAL_DEPENDENCIES := $(local_additional_dependencies)
include $(BUILD_SHARED_LIBRARY)
