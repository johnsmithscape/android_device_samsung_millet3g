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

# inherit from millet-common
-include device/samsung/millet-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := millet3g,millet3gxx

DEVICE_PATH := device/samsung/millet3g

# Kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_millet_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := cyanogenmod_millet3g_defconfig
TARGET_KERNEL_CONFIG := msm8226-sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_millet3g_defconfig 
# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
TARGET_USERIMAGES_USE_F2FS := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/samsung/millet3g/BoardConfigVendor.mk

WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

#TARGET_USES_QTI_NATIVE_TESTS := false
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_NET_EXTENSIONS := false
