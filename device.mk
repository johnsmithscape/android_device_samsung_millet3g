LOCAL_PATH := device/samsung/millet3g
RAMDISK_PATH := $(LOCAL_PATH)/ramdisk

TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell mkdir -p $(OUT)/system/lib/modules)
$(shell cp $(LOCAL_PATH)/wlan.ko $(OUT)/system/lib/modules)
# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Proprietary files
$(call inherit-product, vendor/samsung/millet3g/millet3g-vendor.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk stuff
PRODUCT_COPY_FILES += \
$(RAMDISK_PATH)/init.rc:root/init.rc \
$(RAMDISK_PATH)/fstab.qcom:root/fstab.qcom \
$(RAMDISK_PATH)/init.qcom.rc:root/init.qcom.rc \
$(RAMDISK_PATH)/init.usb.rc:root/init.usb.rc \
$(RAMDISK_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc \
$(RAMDISK_PATH)/ueventd.qcom.rc:root/ueventd.qcom.rc \
$(RAMDISK_PATH)/init.carrier.rc:root/init.carrier.rc \
$(RAMDISK_PATH)/init.container.rc:root/init.container.rc \
$(RAMDISK_PATH)/init.environ.rc:root/init.environ.rc \
$(RAMDISK_PATH)/init.target.rc:root/init.target.rc \
$(RAMDISK_PATH)/init.trace.rc:root/init.trace.rc \
$(RAMDISK_PATH)/init.zygote32.rc:root/init.zygote32.rc

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# Packages

# Audio
PRODUCT_PACKAGES += \
audio.a2dp.default \
audio_policy.default \
audio.primary.default \
audio.r_submix.default \
audio.usb.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf
    $(LOCAL_PATH)/configs/mixer_paths.conf:system/etc/mixer_patch.conf

# Camera
PRODUCT_PACKAGES += \
    Gallery2

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Wifi
PRODUCT_PACKAGES += \
    wpa_supplicant \
    dhcpcd.conf \
    p2p_supplicant_marlin_inc.conf \
    wpa_supplicant_overlay.conf \
    wpa_supplicant.conf \
    libnetcmdiface

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Keylayouts
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

$(call inherit-product, device/samsung/msm8226-common/msm8226.mk)
