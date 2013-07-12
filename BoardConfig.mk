# inherit from the proprietary version
#-include vendor/rockchip/rk3188/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := rk3188
TARGET_BOARD_HARDWARE := rk3188
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_BOOTLOADER_BOARD_NAME := rk3188

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x00004000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x20000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80000000
BOARD_FLASH_BLOCK_SIZE := 131072

# build the kernel
#TARGET_KERNEL_SOURCE := kernel/rockchip/rk3188
#TARGET_KERNEL_CONFIG := mk908-defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := prebuilts/gcc/linux-x86/arm/android-toolchain-eabi/bin/arm-linux-androideabi-
# Fallback
TARGET_PREBUILT_KERNEL := device/rockchip/rk3188/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SDCARD_INTERNAL := true

PRODUCT_CHARACTERISTICS := tablet

# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true

# some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

# WLAN
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/rkwifi.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# GRAPHICS
BOARD_EGL_CFG := device/rockchip/rk3188/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true

# AUDIO
BOARD_USES_ALSA_AUDIO := true

# CAMERA SUPPORT
USE_CAMERA_STUB := true

# MISC DISPLAY SETTINGS
BOARD_USE_SKIA_LCDTEXT := true
BOARD_HAVE_VPU := true

# WEBGL
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
