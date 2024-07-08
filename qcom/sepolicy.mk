#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/statix/sepolicy/qcom/vendor

ifeq (,$(filter msm8937 msm8953 msm8996 msm8998 sdm660 sdm710 sdm845, $(TARGET_BOARD_PLATFORM)))
BOARD_SEPOLICY_M4DEFS += \
    qdisplay_service=vendor_qdisplay_service \
    sysfs_graphics=vendor_sysfs_graphics \
    persist_block_device=vendor_persist_block_device \
    display_vendor_data_file=vendor_display_vendor_data_file \
    hal_perf_default=vendor_hal_perf_default \
    hal_perf_default_exec=vendor_hal_perf_default_exec \
    sysfs_battery_supply=vendor_sysfs_battery_supply \
    sysfs_devfreq=vendor_sysfs_devfreq \
    sysfs_usb_supply=vendor_sysfs_usb_supply \
    sysfs_kgsl=vendor_sysfs_kgsl \
    sysfs_scsi_host=vendor_sysfs_scsi_host
endif
