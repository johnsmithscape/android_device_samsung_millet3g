DEVICE_PACKAGE_OVERLAYS += device/samsung/millet3g/overlay
LOCAL_PATH := device/samsung/millet3g
RAMDISK_PATH := $(LOCAL_PATH)/ramdisk

TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

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

# Packages

# Audio
PRODUCT_PACKAGES += \
audio.a2dp.default \
audio_policy.default \
audio.primary.default \
audio.r_submix.default \
audio.usb.default

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
libnetcmdiface 
