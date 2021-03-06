# Include common makefile
$(call inherit-product, device/samsung/golden/common.mk)

LOCAL_PATH := device/samsung/janice

# F2FS
PRODUCT_PACKAGES += \
    genfstab

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/device_tunables.rc:root/device_tunables.rc \
    $(LOCAL_PATH)/rootdir/init.samsungjanice.rc:root/init.samsungjanice.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.samsungjanice.rc:root/init.recovery.samsungjanice.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungjanice.rc:root/ueventd.samsungjanice.rc \
    $(LOCAL_PATH)/rootdir/init.u8500.rc:root/init.u8500.rc \
    $(LOCAL_PATH)/rootdir/init.u8500.usb.rc:root/init.u8500.usb.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/u8500/janice/janice-vendor-blobs.mk)
