# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/bullhead/system/media/bootanimation.zip:system/media/bootanimation.zip
