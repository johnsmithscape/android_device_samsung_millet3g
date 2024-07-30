# Copyright (C) 2012 The CyanogenMod Project
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

# Platform

TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon
BOARD_VENDOR := samsung

# Architecture

ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_ARCH_VARIANT_CPU :=
#TARGET_CPU_VARIANT :=
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_CPU_VARIANT := krait

# Bootloader

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

# Kernel
TARGET_PREBUILD_KERNEL := device/samsung/millet3g/kernel
BOARD_KERNEL_CMDLINE := boot.img-cmdline
BOARD_KERNEL_BASE := boot.img-base
BOARD_KERNEL_PAGESIZE := boot.img-pagesize
BOARD_MKBOOTIMG_ARGS := --kernel_offset boot.img-kernel_offset --ramdisk_offset boot.img-ramdisk_offset --tags_offset boot.img-tags_offset
TARGET_NO_KERNEL := true

# Partitions

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p24
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p23
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw

BOARD_USERDATA_DEVICE := /dev/block/mmcblk0p26
BOARD_USERDATA_FILESYSTEM := ext4
BOARD_USERDATA_FILESYSTEM_OPTIONS := rw

BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p15

BOARD_BOOT_DEVICE := /dev/block/mmcblk0p14

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 15485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15485760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12759776768
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000

# Graphics

#TARGET_GPU_PP_CORE := 
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Qualcomm support

BOARD_USES_QCOM_HARDWARE := true

# Bluetooth

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(SUB_DEVICE_PATH)/bluetooth

# Charger
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "charger"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true


