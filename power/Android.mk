LOCAL_PATH := $(call my-dir)

ifneq ($(filter trlte trltetmo trltecan trltespr trlteusc trltexx,$(TARGET_DEVICE)),)

# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c power-8084.c power_ext.c

ifeq ($(TARGET_USES_INTERACTION_BOOST),true)
    LOCAL_CFLAGS += -DINTERACTION_BOOST
endif

LOCAL_CFLAGS += -DSET_INTERACTIVE_EXT
 
ifneq ($(TARGET_TAP_TO_WAKE_NODE),)
  LOCAL_CFLAGS += -DTAP_TO_WAKE_NODE=\"$(TARGET_TAP_TO_WAKE_NODE)\"
endif

ifeq ($(TARGET_POWER_SET_FEATURE_LIB),)
  LOCAL_SRC_FILES += power-feature-default.c
else
  LOCAL_STATIC_LIBRARIES += $(TARGET_POWER_SET_FEATURE_LIB)
endif

#ifneq ($(CM_POWERHAL_EXTENSION),)
#LOCAL_MODULE := power.$(CM_POWERHAL_EXTENSION)
#else
#LOCAL_MODULE := power.$(TARGET_BOARD_PLATFORM)
#endif

LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE := power.apq8084
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif
