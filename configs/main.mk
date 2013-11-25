# Copyright (C) 2017 The Pure Nexus Project
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

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/eucos/overlay/common

# Use signing keys for only official nightly builds
ifneq ($(EUCOS_BUILD_TYPE),UNOFFICIAL)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := ../.keys/releasekey
endif

# World APN list
PRODUCT_COPY_FILES += \
    vendor/euco/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Main Required Packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Custom Packages
PRODUCT_PACKAGES += \
    Amaze \
    Busybox \
    Camera2 \
    Eleven \
    Fdroid \
    F-DroidPrivilegedExtension \
    FirefoxFocus \
    Lawnchair \
    OmniJaws \
    OpenDelta \
    Substratum \
    ThemeInterfacer \
    audio_effects.conf \
    libcyanogen-dsp

# call sdclang makefile
include vendor/eucos/configs/sdclang.mk
