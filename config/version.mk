PRODUCT_BRAND ?= ZeroROM

# If CM_BUILDTYPE is not defined, set to EXPERIMENTAL
ifndef CM_BUILDTYPE
    CM_BUILDTYPE := EXPERIMENTAL
    CM_EXTRAVERSION :=
endif

#LineageOS versioning
PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 1
LINEAGE_VERSION := cm-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(CM_BUILDTYPE)-$(ZERO_PRODUCT_DEVICE)

#ZeroROM versioning
ZERO_VERSION := $(LINEAGE_VERSION)

# LineageOS ro product overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.version=$(LINEAGE_VERSION) \
    ro.cm.releasetype=$(CM_BUILDTYPE) \
    ro.cm.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LINEAGE_VERSION) \
    ro.cmlegal.url=https://lineageos.org/legal

# ZeroROM ro product overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zero.version=$(ZERO_VERSION)

