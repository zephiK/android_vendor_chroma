# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Enable tethering
PRODUCT_PROPERTY_OVERRIDES += \
	net.tethering.noprovisioning=true \
	persist.debug.wfd.enable=1

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip
