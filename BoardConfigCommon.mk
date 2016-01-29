#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/trlte-common

# Architecture
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

ENABLE_CPUSETS := true

ENABLE_CPUSETS := true

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_USE_LL_AS_PRIMARY := true
BOARD_USES_ES705 := true
TARGET_HAVE_DYN_A2DP_SAMPLERATE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/vnd_trlte.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# CMHW
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw
BOARD_HARDWARE_CLASS += device/samsung/trlte-common/cmhw

# Display
BOARD_EGL_CFG := device/samsung/trlte-common/configs/egl.cfg
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
HAVE_ADRENO_SOURCE := false
USE_OPENGL_RENDERER := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Sensors, taken from http://review.cyanogenmod.org/#/c/124083/, to make some lollipop blobs work (basically SENSOR_TYPE_HEART_RATE sensor).
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_RAMDISK_OFFSET     := 0x02600000
BOARD_KERNEL_TAGS_OFFSET := 0x02400000
BOARD_SECOND_OFFSET      := 0x00f00000
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := emotion_cm_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/trlte

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19922944
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3984588800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26558312448

# Platform
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420
USE_CLANG_PLATFORM_BUILD := true

# Power HAL
#TARGET_POWERHAL_VARIANT := qcom
CM_POWERHAL_EXTENSION := qcom
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(LOCAL_PATH)/power/power_ext.c

# Data services
USE_DEVICE_SPECIFIC_DATASERVICES := true

# Qualcomm support
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
TARGET_USES_QCOM_BSP := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/trlte-common/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/trlte-common/sepolicy

# Time
BOARD_USES_QC_TIME_SERVICES := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BUS := PCIE

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

TARGET_USES_BLOCK_BASED_OTA := false
