ifeq ($(TARGET_PROVIDES_CAMERA_HAL),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils libbinder

LOCAL_C_INCLUDES := \
    system/media/camera/include

LOCAL_LDLIBS += -ldl  

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.apq8084
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
