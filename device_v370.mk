# Copyright (C) 2013 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/acer/v370/v370-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.mt6589:root/fstab.mt6589 \
	$(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/kernel:recovery/kernel

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
