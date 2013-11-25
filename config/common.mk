# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# World APN list
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
