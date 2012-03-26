# Inherit device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_toro
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Primo
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Galaxy Nexus\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew & @MongooseHelix for updates\nGet the latest ROM at evervolv.com\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip

