[main]
mixinsdir: device/intel/mixins/groups

[mapping]
product.mk: device.mk

[groups]
android_ia: default
sepolicy: permissive
graphics: android_ia(gen9+=false,hwc2=true,vulkan=false,drmhwc=false,minigbm=true)
media: android_ia
device-type: tablet
ethernet: dhcp
debugfs: default
storage: sdcard-mmcblk1-4xUSB-sda-emulated(adoptablesd=true,adoptableusb=false)
display-density: high
usb-gadget: g_ffs
adb_net: false
kernel: v80plus_prebuilt
bluetooth: rtl8723bs
boot-arch: android_ia
audio: android_ia
wlan: none
cpu-arch: x86
cpuset: 4cores
rfkill: true(force_disable=)
dexpreopt: enabled
disk-bus: auto
usb: host+acc
lights: true
config-partition: enabled
vendor-partition: false(partition_size=1500,partition_name=android_vendor)
debug-crashlogd: true
debug-logs: true
