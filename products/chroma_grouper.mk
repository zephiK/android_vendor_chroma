# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7 WiFi
PRODUCT_MANUFACTURER := ASUS

# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=grouper \
    BUILD_FINGERPRINT=google/grouper/grouper:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="grouper-user 5.1 LMY47I 1767468 release-keys"

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Boot animation, use hammerhead till we get mako specific one
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip
