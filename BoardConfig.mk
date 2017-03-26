-include device/samsung/golden/BoardConfig.mk

TARGET_OTA_ASSERT_DEVICE := janice,i9070,GT-I9070

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_CONFIG := janice_defconfig

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/janice/vibrator/vibrator.c

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/janice/rootdir/fstab.samsungjanice

# Hardware tunables (device parts replacement)
#BOARD_HARDWARE_CLASS := device/samsung/janice/cmhw

# Disable legacy sensors using because janice has gyro
BOARD_USE_LEGACY_SENSORS_FUSION := false

TARGET_NO_SEPARATE_RECOVERY := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/janice/shbootimg.mk
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
