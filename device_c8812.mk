# Copyright (C) 2011 The Android Open Source Project
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

# Inherit common language setup
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit c8813 vendor setup
$(call inherit-product-if-exists, vendor/huawei/c8812/c8812-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/huawei/c8812/overlay

# Files needed for recovery image
PRODUCT_COPY_FILES += \
  device/huawei/c8812/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
  device/huawei/c8812/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
  device/huawei/c8812/recovery/sbin/linker:/recovery/root/sbin/linker \
  device/huawei/c8812/recovery/sbin/su:/recovery/root/sbin/su \
  device/huawei/c8812/recovery/sbin/SuperUser.apk:/recovery/root/sbin/SuperUser.apk \
  device/huawei/c8812/recovery/system/lib/libc.so:/recovery/root/system/lib/libc.so \
  device/huawei/c8812/recovery/system/lib/libcutils.so:/recovery/root/system/lib/libcutils.so \
  device/huawei/c8812/recovery/system/lib/liblog.so:/recovery/root/system/lib/liblog.so \
  device/huawei/c8812/recovery/system/lib/libm.so:/recovery/root/system/lib/libm.so \
  device/huawei/c8812/recovery/system/lib/libstdc++.so:/recovery/root/system/lib/libstdc++.so \
  device/huawei/c8812/recovery/system/lib/libz.so:/recovery/root/system/lib/libz.so  

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
ro.weibo.com=weibo.com/cofface \
ro.adb.secure=1 \
service.adb.root=1 \
