ifeq ($(TARGET_PRODUCT),chroma_hammerhead)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48U/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48U 2167285 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_mako)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48U/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48U 2167285 release-keys"
endif

ifeq ($(TARGET_PRODUCT),chroma_shamu)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LMY48U/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48U 2167285 release-keys"
endif
