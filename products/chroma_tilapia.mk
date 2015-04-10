# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7 Mobile
PRODUCT_MANUFACTURER := ASUS

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/grouper/system/media/bootanimation.zip:system/media/bootanimation.zip
