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
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything
    
# Launcher3 supported devices
PRODUCT_PACKAGES += \
    Launcher3

# Auto-rotate
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/chroma/overlay/Launcher3
# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/chroma/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Extra packages
PRODUCT_PACKAGES += \
    LockClock

# APN list
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/addon.d/50-chroma.sh:system/addon.d/50-chroma.sh \
    vendor/chroma/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/chroma/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/chroma/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/chroma/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Include chromium prebuilt if opted in
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

LOCAL_PATH := $(call vendor/chroma/)
include $(call all-makefiles-under,$(LOCAL_PATH))

#This is because syko doen't like having to open 20 products just to change numbers

ifeq ($(TARGET_PRODUCT),chroma_deb)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=razorg \
BUILD_FINGERPRINT=google/razorg/deb:5.1/LMY47I/1767468:user/release-keys \
PRIVATE_BUILD_DESC="razorg-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_flo)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=razor \
BUILD_FINGERPRINT=google/razor/flo:5.1/LMY47I/1767468:user/release-keys \
PRIVATE_BUILD_DESC="razor-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_grouper)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=grouper \
BUILD_FINGERPRINT=google/nakasi/grouper:5.1/LMY47I/1767468:user/release-keys \
PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_hammerhead)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_mako)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_manta)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mantaray \
    BUILD_FINGERPRINT=google/mantaray/manta:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="mantaray-user 5.1 LMY47I 1767468 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_shamu)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47I 1767468 release-keys"  
endif

ifeq ($(TARGET_PRODUCT),chroma_tilapia)
# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=tilapia \
    BUILD_FINGERPRINT=google/nakasig/grouper:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47I 1767468 release-keys"
endif
