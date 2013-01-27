## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := e860

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hisense/e860/device_e860.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e860
PRODUCT_NAME := cm_e860
PRODUCT_BRAND := hisense
PRODUCT_MODEL := E860
PRODUCT_MANUFACTURER := hisense
