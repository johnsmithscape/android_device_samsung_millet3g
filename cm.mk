# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/millet3gxx/full_millet3gxx.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=millet3gxx TARGET_DEVICE=millet3g BUILD_FINGERPRINT="samsung/millet3gxx/millet3g:4.4.2/KOT49H/T331XXU1ANJ4:user/release-keys" PRIVATE_BUILD_DESC="millet3gxx-user 4.4.2 KOT49H T331XXU1ANJ4 release-keys"

PRODUCT_DEVICE := millet3gxx
PRODUCT_NAME := cm_millet3gxx
