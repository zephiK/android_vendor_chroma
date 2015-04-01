# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1 LMY47I 1767468 release-keys"

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Enable tethering
PRODUCT_PROPERTY_OVERRIDES += \
	net.tethering.noprovisioning=true \
	persist.debug.wfd.enable=1

# Boot animation, use hammerhead till we get mako specific one
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip
