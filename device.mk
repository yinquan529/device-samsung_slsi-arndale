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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/linaro/arndale
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
        device/linaro/arndale/fstab.exynos5250-arndale:root/fstab.exynos5250-arndale \
        device/linaro/arndale/egl.cfg:system/lib/egl/egl.cfg \
        device/linaro/arndale/ueventd.exynos5250-arndale.rc:root/ueventd.exynos5250-arndale.rc \
        device/linaro/arndale/init.exynos5250-arndale.rc:root/init.exynos5250-arndale.rc

PRODUCT_CHARACTERISTICS := tablet,nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/linaro/arndale/overlay

$(call inherit-product-if-exists, vendor/samsung_slsi/exynos5250/exynos5250-vendor.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)
