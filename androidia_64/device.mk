# ----------------- BEGIN MIX-IN DEFINITIONS -----------------
# Mix-In definitions are auto-generated by mixin-update
##############################################################
# Source: device/intel/mixins/groups/android_ia/default/product.mk
##############################################################
#Product Characteristics
PRODUCT_DIR := $(dir $(lastword $(filter-out device/common/%,$(filter device/%,$(ALL_PRODUCTS)))))

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.dalvik.vm.native.bridge=libhoudini.so

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal large xlarge mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

DEVICE_PACKAGE_OVERLAYS += device/intel/android_ia/common/overlay

PRODUCT_PACKAGES += $(THIRD_PARTY_APPS)

# Get a list of languages.
$(call inherit-product,$(SRC_TARGET_DIR)/product/locales_full.mk)

# Get everything else from the parent package
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Get some sounds
$(call inherit-product-if-exists,frameworks/base/data/sounds/AudioPackage6.mk)

# Get Platform specific settings
$(call inherit-product-if-exists,vendor/vendor.mk)

#Product Characteristics
PRODUCT_COPY_FILES += \
    $(if $(wildcard $(PRODUCT_DIR)fstab.$(TARGET_PRODUCT)),$(PRODUCT_DIR)fstab.$(TARGET_PRODUCT),$(LOCAL_PATH)/fstab):root/fstab.$(TARGET_PRODUCT) \
    $(if $(wildcard $(PRODUCT_DIR)init.$(TARGET_PRODUCT).rc),$(PRODUCT_DIR)init.$(TARGET_PRODUCT).rc,$(LOCAL_PATH)/init.rc):root/init.$(TARGET_PRODUCT).rc \
    $(if $(wildcard $(PRODUCT_DIR)ueventd.$(TARGET_PRODUCT).rc),$(PRODUCT_DIR)ueventd.$(TARGET_PRODUCT).rc,$(LOCAL_PATH)/ueventd.rc):root/ueventd.$(TARGET_PRODUCT).rc \
    $(LOCAL_PATH)/gpt.ini:root/gpt.$(TARGET_PRODUCT).ini \

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Camera: Device-specific configuration files.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \

# Voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \

$(foreach sensor,accelerometer barometer compass gyroscope light stepcounter stepdetector proximity, \
$(eval PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.$(sensor).xml:system/etc/permissions/android.hardware.sensor.$(sensor).xml))

# Usb
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Gps
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \

# Touch
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \

#Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \

# USB
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \

# please modify to appropriate value based on tuning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=24.0f \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=512

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.rtc_local_time=1 \

# Enable MultiWindow
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# DRM service
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.virtual=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=0 \
    persist.camera.HAL3.enabled=0 \
    persist.camera.ois.disable=0

# Camera: Format set up for graphics
PRODUCT_PROPERTY_OVERRIDES += ro.camera.pixel_format = 0x10F
PRODUCT_PROPERTY_OVERRIDES += ro.camera.rec.pixel_format = 0x100
PRODUCT_PROPERTY_OVERRIDES += ro.ycbcr.pixel_format = 0x10F

# Input resampling configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# AOSP Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Terminal

PRODUCT_PACKAGES += \
    libion \
    libxml2

PRODUCT_PACKAGES += \
    libemoji

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    NotePad \
    Provision \
    camera.android_ia \
    drmserver \
    gps.default \
    lights.default \
    power.android_ia \
    scp \
    sensors.hsb \
    sftp \
    ssh \
    sshd \
    local_time.default.so \
    vibrator.default.so \
    keystore.default.so

# Sensors
PRODUCT_PACKAGES += \
    sensorhubd      \
    libsensorhub    \
    AndroidCalibrationTool \

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
##############################################################
# Source: device/intel/mixins/groups/graphics/android_ia/product.mk
##############################################################
# Mesa
PRODUCT_PACKAGES += \
    libGLES_mesa \
    libGLES_android

PRODUCT_PACKAGES += \
    libdrm \
    libdrm_intel \
    libsync

PRODUCT_COPY_FILES += \
    device/intel/android_ia/common/graphics/drirc:system/etc/drirc


# HWComposer IA
PRODUCT_PACKAGES += \
    hwcomposer.android_ia

PRODUCT_PROPERTY_OVERRIDES += \
   hwc.drm.use_overlay_planes=1 \
   ro.hardware.hwcomposer=android_ia

# Mini gbm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gralloc=android_ia

PRODUCT_PACKAGES += \
    gralloc.android_ia


# GLES version. We cannot enable Android
# 3.2 support for Gen9+ devices.
PRODUCT_PROPERTY_OVERRIDES += \
   ro.opengles.version=196609




##############################################################
# Source: device/intel/mixins/groups/media/android_ia/product.mk
##############################################################
# libva, vaapi
PRODUCT_PACKAGES += \
    libva \
    libva-android \
    libva-egl \
    libva-tpi \
    i965_drv_video

# Audio/video codec support.
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    device/intel/android_ia/common/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/intel/android_ia/common/media/media_codecs.xml:system/etc/media_codecs.xml

#Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true
##############################################################
# Source: device/intel/mixins/groups/device-type/tablet/product.mk
##############################################################
PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product,frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_AAPT_CONFIG := normal large xlarge mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG :=

PRODUCT_PROPERTY_OVERRIDES += \
   ro.sf.lcd_density=160


##############################################################
# Source: device/intel/mixins/groups/ethernet/dhcp/product.mk
##############################################################
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# Ethernet
PRODUCT_PROPERTY_OVERRIDES += \
   net.eth0.startonboot=1

##############################################################
# Source: device/intel/mixins/groups/display-density/high/product.mk
##############################################################
ADDITIONAL_DEFAULT_PROPERTIES += ro.sf.lcd_density=240
##############################################################
# Source: device/intel/mixins/groups/kernel/v80plus_prebuilt/product.mk
##############################################################
TARGET_KERNEL_ARCH := x86
BOARD_USE_64BIT_KERNEL := false

KERNEL_MODULES_ROOT_PATH ?= /vendor/lib/modules
KERNEL_MODULES_ROOT ?= $(KERNEL_MODULES_ROOT_PATH)

FIRMWARES_DIR ?= vendor/linux/firmware

# Include common settings.
FIRMWARE_FILTERS ?= .git/% %.mk

# Firmware
$(call inherit-product,device/intel/android_ia/common/firmware.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
  LOCAL_KERNEL := device/intel/android_ia/androidia_64/kernel
else
  LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
##############################################################
# Source: device/intel/mixins/groups/bluetooth/rtl8723bs/product.mk
##############################################################
PRODUCT_PACKAGES += \
    bd_prov \
    libbt-vendor \
    rfkill_bt.sh \
    bt_vendor.default.conf \
    audio.a2dp.default \
    rtl8723b_config \
    rtl8723b_fw \

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

##############################################################
# Source: device/intel/mixins/groups/audio/android_ia/product.mk
##############################################################
# Tinyalsa
PRODUCT_PACKAGES_DEBUG += \
         tinymix \
         tinyplay \
         tinycap

# Extended Audio HALs
PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.hdmi.android_ia \
    audio.primary.android_ia \
    audio.usb.default \
    audio_policy.default.so \
    audio_configuration_files

##############################################################
# Source: device/intel/mixins/groups/rfkill/true/product.mk
##############################################################
PRODUCT_COPY_FILES += device/intel/common/rfkill/rfkill-init.sh:system/bin/rfkill-init.sh
##############################################################
# Source: device/intel/mixins/groups/disk-bus/auto/product.mk
##############################################################
# create primary storage symlink dynamically
PRODUCT_PACKAGES += set_storage
##############################################################
# Source: device/intel/mixins/groups/usb/host+acc/product.mk
##############################################################
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# usb accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
##############################################################
# Source: device/intel/mixins/groups/lights/true/product.mk
##############################################################
PRODUCT_PACKAGES += lights.android_ia
##############################################################
# Source: device/intel/mixins/groups/debug-logs/true/product.mk
##############################################################
ifneq ($(TARGET_BUILD_VARIANT),user)
MIXIN_DEBUG_LOGS := true
endif

ifeq ($(MIXIN_DEBUG_LOGS),true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/init.logs.rc:root/init.logs.rc
PRODUCT_PACKAGES += \
    elogs.sh \
    start_log_srv.sh \
    logcat_ep.sh
endif

ifeq ($(MIXIN_DEBUG_LOGS),true)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.service.default_logfs=apklogfs
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.intel.logger=/system/bin/logcat
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += logd.kernel.raw_message=False
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.intel.logger.rot_cnt=20
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.intel.logger.rot_size=5000
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/debug-logs
BOARD_SEPOLICY_M4DEFS += module_debug_logs=true
endif
##############################################################
# Source: device/intel/mixins/groups/debug-crashlogd/true/product.mk
##############################################################
ifeq ($(MIXIN_DEBUG_LOGS),true)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.crashlogd.rc:root/init.crashlogd.rc \
	$(call add-to-product-copy-files-if-exists,$(LOCAL_PATH)/ingredients.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ingredients.conf) \
	$(call add-to-product-copy-files-if-exists,$(LOCAL_PATH)/crashlog.conf:$(TARGET_COPY_OUT_VENDOR)/etc/crashlog.conf)
PRODUCT_PACKAGES += crashlogd \
	dumpstate_dropbox.sh
endif

ifeq ($(MIXIN_DEBUG_LOGS),true)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.crashlogd.data_quota=50
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/crashlogd

CRASHLOGD_LOGS_PATH := "/data/logs"
CRASHLOGD_APLOG := true
CRASHLOGD_FULL_REPORT := true
CRASHLOGD_MODULE_MODEM ?= true
CRASHLOGD_USE_SD := false
endif
##############################################################
# Source: device/intel/mixins/groups/debug-kernel/default/product.mk
##############################################################
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/init.kernel.rc:root/init.kernel.rc
endif
##############################################################
# Source: device/intel/mixins/groups/debug-unresponsive/default/product.mk
##############################################################
ifneq ($(TARGET_BUILD_VARIANT),user)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += sys.dropbox.max_size_kb=4096

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += sys.dump.binder_stats.uiwdt=1
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += sys.dump.binder_stats.anr=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += sys.dump.peer_depth=3

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += sys.dump.stacks_timeout=1500

endif
# ------------------ END MIX-IN DEFINITIONS ------------------
PRODUCT_PACKAGES += libhoudini houdini
PRODUCT_PROPERTY_OVERRIDES += ro.dalvik.vm.isa.arm=x86 ro.enable.native.bridge.exec=1

ENABLE_NATIVEBRIDGE_64BIT := false
ifeq ($(BOARD_USE_64BIT_USERSPACE),true)
  ENABLE_NATIVEBRIDGE_64BIT = true
else
  ifeq ($(TARGET_SUPPORTS_64_BIT_APPS),true)
    ENABLE_NATIVEBRIDGE_64BIT = true
  endif
endif
ifeq ($(ENABLE_NATIVEBRIDGE_64BIT),true)
  PRODUCT_PACKAGES += houdini64
  PRODUCT_PROPERTY_OVERRIDES += ro.dalvik.vm.isa.arm64=x86_64 ro.enable.native.bridge.exec64=1
endif
$(call inherit-product,build/target/product/verity.mk)
