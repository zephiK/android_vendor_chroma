# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/deb/aosp_deb.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7 LTE
PRODUCT_MANUFACTURER := ASUS

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Boot animation, use hammerhead till we get mako specific one
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip

#fmas n7 specific
PRODUCT_PROPERTY_OVERRIDES += \
      fmas.spkr_6ch=35,20,110 \
      fmas.spkr_2ch=35,25 \
      fmas.spkr_angles=10 \
      fmas.spkr_sgain=0
