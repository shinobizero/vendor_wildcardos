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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true \
    ro.com.google.ime.theme_id=5

# Proprietary latinime libs needed for Keyboard swyping
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# World APN list
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/zero/overlay/common

# Use signing keys for only official nightly builds
#ifneq ($(EUCOS_BUILD_TYPE),UNOFFICIAL)
#    PRODUCT_DEFAULT_DEV_CERTIFICATE := ../.keys/releasekey
#endif

# Main Required Packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Extra tools in ZeroROM
PRODUCT_PACKAGES += \
    bash \
    Busybox \
    libncurses

# Custom Packages
PRODUCT_PACKAGES += \
    Amaze \
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
include vendor/zero/configs/sdclang.mk

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/bin/sysinit:system/bin/sysinit

# init file
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/etc/init.zero.rc:root/init.zero.rc

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/zero/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/zero/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

# MAGISK
PRODUCT_COPY_FILES += \
    external/magisk/Magisk.zip:system/addon.d/Magisk.zip

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable Google Lens
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/etc/sysconfig/nexus.xml:system/etc/sysconfig/nexus.xml \
    vendor/zero/prebuilt/etc/sysconfig/pixel_2017_exclusive.xml:system/etc/sysconfig/pixel_2017_exclusive.xml \
    vendor/zero/prebuilt/etc/sysconfig/pixel_2017.xml:system/etc/sysconfig/pixel_2017.xml

# Spectrum Support
PRODUCT_PROPERTY_OVERRIDES += \
    spectrum.support=1 \
    persist.spectrum.kernel=ZeroROM
