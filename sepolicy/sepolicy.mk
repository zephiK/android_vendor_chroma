#
# This policy configuration will be used by all products that
#

BOARD_SEPOLICY_DIRS += \
    vendor/chroma/sepolicy

BOARD_SEPOLICY_UNION += \
    system.te \
    service_contexts \
    file_contexts \
    mac_permissions.xml
