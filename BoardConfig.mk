# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_FOLDER := device/acer/v370

# board
TARGET_BOARD_PLATFORM := mt6589
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7


# HW Composer
BOARD_NEEDS_OLD_HWC_API := true
COMMON_GLOBAL_CFLAGS += -DMTK_G_MT6589
COMMON_GLOBAL_CPPFLAGS += -DMTK_G_MT6589


# power
TARGET_POWERHAL_VARIANT := cm

# boot
TARGET_NO_BOOTLOADER := true

# EGL settings
BOARD_EGL_CFG := device/acer/v370/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/kernel

# partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x600000
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

# mkimage to append headers
#TARGET_MKIMAGE := device/acer/v370/mkimage
#TARGET_USE_BUILT_BOOTIMAGE := true




#SEPolicy
BOARD_SEPOLICY_DIRS += \
    device/acer/v370/sepolicy

#BOARD_SEPOLICY_UNION += \
#    file_contexts \
#    device.te \
#    netd.te

DEVICE_RESOLUTION := 540x960

BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_HAS_LARGE_FILESYSTEM := true

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/mt6320-battery/power_supply/battery
#BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_SUPERSU := true

BOARD_CUSTOM_BOOTIMG_MK := device/acer/v370/boot.mk
