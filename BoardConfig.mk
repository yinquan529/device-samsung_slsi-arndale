#
# Copyright 2013 The Android Open-Source Project
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

# Use the non-open-source parts, if they're present
-include vendor/linaro/arndale/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := arndale
TARGET_NO_KERNEL := false
TARGET_KERNEL_SOURCE := kernel/linaro/arndale
KERNEL_CONFIG := arndale_android_defconfig
TARGET_USE_UBOOT := true
UBOOT_CONFIG := arndale5250
TARGET_USE_XLOADER := false
TARGET_NO_RECOVERY := true
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
# bootargs
BOARD_KERNEL_CMDLINE := console=ttySAC2 root=/dev/mmcblk1p2

# Origen uses an Exynos4 -- Cortex A9 TO FIX arndale A15
TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))

# ARMs gator (DS-5)
TARGET_USE_GATOR := false
TARGET_BOOTLOADER_TYPE := uboot
