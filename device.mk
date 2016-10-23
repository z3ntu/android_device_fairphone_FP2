$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/fairphone/fp2/fp2-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fairphone/fp2/overlay

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/fairphone/fp2/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/fairphone/fp2/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/fairphone/fp2/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/fairphone/fp2/audio/mixer_paths_auxpcm.xml:system/etc/mixer_paths_auxpcm.xml

# media_profiles and media_codecs xmls for 8974
ifeq ($(TARGET_ENABLE_QC_AV_ENHANCEMENTS), true)
PRODUCT_COPY_FILES += device/fairphone/fp2/media/media_profiles_8974.xml:system/etc/media_profiles.xml \
                      device/fairphone/fp2/media/media_codecs_8974.xml:system/etc/media_codecs.xml
endif #TARGET_ENABLE_QC_AV_ENHANCEMENTS

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle

# Feature definition files for 8974
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

# Battery_monitor
PRODUCT_PACKAGES += \
    battery_monitor \
    battery_shutdown

# Ramdisk configurations
PRODUCT_COPY_FILES += \
    device/fairphone/fp2/rootdir/fstab.qcom:root/fstab.qcom \
    device/fairphone/fp2/rootdir/fstab.qcom:recovery/root/fstab.qcom \
    device/fairphone/fp2/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := full_fp2
PRODUCT_DEVICE := fp2
