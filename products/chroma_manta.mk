# Inherit AOSP device configuration for mako.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/mako/system/media/bootanimation.zip:system/media/bootanimation.zip
