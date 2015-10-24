# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Extra packages
PRODUCT_PACKAGES += \
    Launcher2

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/mako/system/media/bootanimation.zip:system/media/bootanimation.zip
