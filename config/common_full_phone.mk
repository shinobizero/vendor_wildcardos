# Inherit common CM stuff
$(call inherit-product, vendor/zero/config/common_full.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/zero/overlay/dictionaries

$(call inherit-product, vendor/zero/config/telephony.mk)
