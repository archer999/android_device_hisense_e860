$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/hisense/e860/e860-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    libRS \
    librs_jni \
    hwprops \
    rzscontrol \
    charger \
    charger_res_images

# OMX 
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc 

# Display Graphic
PRODUCT_PACKAGES += \
    libQcomUI \
    libtilerenderer   

# override default
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/ueventd.rc:root/ueventd.rc

# APNs for 3G network access
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/apns-conf.xml:system/etc/apns-conf.xml

# vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/vold.fstab:system/etc/vold.fstab

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/files/system/lib/modules/ath6kl_sdio.ko:system/lib/modules/ath6kl_sdio.ko \
    $(LOCAL_PATH)/files/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    $(LOCAL_PATH)/files/system/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/files/system/lib/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/files/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko \
    $(LOCAL_PATH)/files/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/files/system/lib/modules/max2165.ko:system/lib/modules/max2165.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mt2060.ko:system/lib/modules/mt2060.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mt2131.ko:system/lib/modules/mt2131.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mt2266.ko:system/lib/modules/mt2266.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
    $(LOCAL_PATH)/files/system/lib/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
    $(LOCAL_PATH)/files/system/lib/modules/qt1010.ko:system/lib/modules/qt1010.ko \
    $(LOCAL_PATH)/files/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda18212.ko:system/lib/modules/tda18212.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda18218.ko:system/lib/modules/tda18218.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda18271.ko:system/lib/modules/tda18271.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda827x.ko:system/lib/modules/tda827x.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda8290.ko:system/lib/modules/tda8290.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tda9887.ko:system/lib/modules/tda9887.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tea5761.ko:system/lib/modules/tea5761.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tea5767.ko:system/lib/modules/tea5767.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
    $(LOCAL_PATH)/files/system/lib/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
    $(LOCAL_PATH)/files/system/lib/modules/xc5000.ko:system/lib/modules/xc5000.ko  

# BT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Qualcomm specific
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/prebuilt/load_wifi_mod.sh:system/etc/load_wifi_mod.sh \
    $(LOCAL_PATH)/prebuilt/remove_wifi_mod.sh:system/etc/remove_wifi_mod.sh \
    $(LOCAL_PATH)/prebuilt/testmode.sh:system/etc/testmode.sh \
    $(LOCAL_PATH)/prebuilt/wifitest_recv.sh:system/etc/wifitest_recv.sh \
    $(LOCAL_PATH)/prebuilt/wifitest_send.sh:system/etc/wifitest_send.sh   

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    $(LOCAL_PATH)/prebuilt/UserPolicy.xml:system/etc/UserPolicy.xml

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/system/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    $(LOCAL_PATH)/files/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/files/system/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
    $(LOCAL_PATH)/files/system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    $(LOCAL_PATH)/files/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    $(LOCAL_PATH)/files/system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    $(LOCAL_PATH)/files/system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    $(LOCAL_PATH)/files/system/etc/firmware/ath6k/AR6003/hw2.1.1/softmac:system/etc/firmware/ath6k/AR6003/hw2.1.1/softmac     

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/files/init.cal.rc:root/init.cal.rc \
    $(LOCAL_PATH)/files/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/files/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/files/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/files/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/files/init.recovery.rc:root/init.recovery.rc

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml   

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    $(LOCAL_PATH)/files/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    $(LOCAL_PATH)/files/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    $(LOCAL_PATH)/files/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/files/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    $(LOCAL_PATH)/files/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    $(LOCAL_PATH)/files/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    $(LOCAL_PATH)/files/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/files/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ts.conf:system/ts.conf

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.board.platform=msm7627a

LOCAL_PATH := $(LOCAL_PATH)
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Inherit mdpi  
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := e860
PRODUCT_DEVICE := E860
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := Hisense E860
