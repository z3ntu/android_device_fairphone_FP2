# Release name
PRODUCT_RELEASE_NAME := fp2

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fairphone/fp2/device_fp2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fp2
PRODUCT_NAME := cm_fp2
PRODUCT_BRAND := fairphone
PRODUCT_MODEL := fp2
PRODUCT_MANUFACTURER := fairphone
