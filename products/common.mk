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
    ro.build.selinux=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything
    
# Launcher3 supported devices
PRODUCT_PACKAGES += \
    Launcher3

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
    LockClock \
    OTACenter

# Exchange2
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/app/Exchange2.apk:system/app/Exchange2/Exchange2.apk

# APN list
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/chroma/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
 
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/addon.d/50-chroma.sh:system/addon.d/50-chroma.sh \
    vendor/chroma/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/chroma/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/chroma/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/chroma/prebuilt/common/etc/backup.conf:system/etc/backup.conf

#googley
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/common/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/chroma/prebuilt/common/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/chroma/prebuilt/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \

# OTA Center
PRODUCT_VERSION_MAJOR = 5
PRODUCT_VERSION_MINOR = 1.1
#PRODUCT_VERSION_MAINTENANCE = Beta-0.1

ROM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.chroma.version=$(ROM_VERSION) \
    chroma.ota.version=$(shell date -u +%Y%m%d) \
    ro.modversion=$(ROM_VERSION)

# Include chromium prebuilt if opted in
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

-include vendor/chroma/products/common_fingerprints.mk

LOCAL_PATH := $(call vendor/chroma/)
include $(call all-makefiles-under,$(LOCAL_PATH))


ifneq ($(filter chroma_hammerhead chroma_mako chroma_shamu chroma_manta chroma_flo chroma_deb,$(TARGET_PRODUCT)),)
# DRM
PRODUCT_COPY_FILES += \
        vendor/chroma/prebuilt/common/vendor/lib/libwvdrm_L1.so:/system/vendor/lib/libwvdrm_L1.so \
        vendor/chroma/prebuilt/common/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so \
        vendor/chroma/prebuilt/common/vendor/lib/mediadrm/libdrmclearkeyplugin.so:/system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
        vendor/chroma/prebuilt/common/vendor/lib/libWVStreamControlAPI_L1.so:/system/vendor/lib/libWVStreamControlAPI_L1.so \
        vendor/chroma/prebuilt/common/vendor/lib/drm/libdrmwvmplugin.so:/system/vendor/lib/drm/libdrmwvmplugin.so \
        vendor/chroma/prebuilt/common/vendor/lib/mediadrm/libwvdrmengine.so:/system/vendor/lib/mediadrm/libwvdrmengine.so 
endif
