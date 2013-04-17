# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/c8812/device_c8812.mk)

# Device identifier.
PRODUCT_DEVICE := c8812
PRODUCT_NAME := cm_c8812
PRODUCT_BRAND := huawei
PRODUCT_MODEL := HUAWEI C8812
PRODUCT_MANUFACTURER := huawei
