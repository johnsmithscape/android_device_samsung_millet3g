# Release name
CM_DEVICE := millet3g
PRODUCT_RELEASE_NAME := millet3g
TARGET_OTA_ASSERT_DEVICE := millet3g,millet3gxx,SM-T331

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/themes_common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/millet3g/full_millet3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := SM-T331
PRODUCT_BRAND := samsung
PRODUCT_NAME := cm_millet3g
PRODUCT_DEVICE := millet3g
PRODUCT_MANUFACTURER := samsung
