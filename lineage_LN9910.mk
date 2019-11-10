# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from LN9910 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lava
PRODUCT_DEVICE := LN9910
PRODUCT_MANUFACTURER := lava
PRODUCT_NAME := lineage_LN9910
PRODUCT_MODEL := LN9910

PRODUCT_GMS_CLIENTID_BASE := android-lava
TARGET_VENDOR := lava
TARGET_VENDOR_PRODUCT_NAME := LN9910
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="op29_gofu-user 9 PPR1.180610.011 48 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := LAVA/LN9910/LN9910:9/PPR1.180610.011/48:user/release-keys
