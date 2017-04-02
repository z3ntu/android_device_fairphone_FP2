# Release name
PRODUCT_RELEASE_NAME := FP2

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/fairphone/fp2/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/fairphone/fp2/fp2-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fp2
PRODUCT_NAME := lineage_fp2
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP2
PRODUCT_MANUFACTURER := Fairphone
