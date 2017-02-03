# Release name
PRODUCT_RELEASE_NAME := FP2

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fairphone/fp2/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fp2
PRODUCT_NAME := lineage_fp2
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP2
PRODUCT_MANUFACTURER := Fairphone
