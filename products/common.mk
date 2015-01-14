# Generic product
PRODUCT_NAME := chroma
PRODUCT_BRAND := chroma
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Launcher3 supported devices
ifneq ($(filter chroma_hammerhead chroma_mako chroma_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    Launcher3

# Auto-rotate
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/chroma/overlay/Launcher3
endif

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/chroma/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# STK: overlay common to all devices with telephony
ifneq ($(filter chroma_hammerhead chroma_mako chroma_shamu,$(TARGET_PRODUCT)),)
# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk
endif

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# APN list
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/chroma/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/chroma/prebuilt/common/bin/50-chroma.sh:system/addon.d/50-chroma.sh \
    vendor/chroma/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/chroma/prebuilt/common/etc/backup.conf:system/etc/backup.conf
