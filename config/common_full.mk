# Inherit common CM stuff
$(call inherit-product, vendor/zero/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
