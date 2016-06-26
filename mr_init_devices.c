#include <stdlib.h>

// Copied from https://github.com/DavyA/android_device_oneplus_onyx/blob/multirom/mr_init_devices.c

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    //"/sys/devices/virtual/mem/null",
    //"/sys/devices/virtual/misc/fuse",

    // Framebuffer
    "/sys/class/graphics/fb0",
    
    // Memory
    "/sys/block/mmcblk0",
    "/sys/devices/msm_sdcc.1",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p8",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p13",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p15",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p20",
    
    //"/sys/bus/mmc",
    //"/sys/bus/mmc/drivers/mmcblk",
    //"/sys/module/mmc_core",
    //"/sys/module/mmcblk",

    //"/sys/devices/virtual/input*",
    //"/sys/devices/virtual/misc/uinput",
    //"/sys/devices/platform/msm_pm*",

    // for adb
    //"/sys/class/tty/ptmx",
    //"/dev/block/platform/msm_sdcc.1/by-name/system", //system
    //"/dev/block/platform/msm_sdcc.1/by-name/cache", // /cache
    //"/sys/class/misc/android_adb",
    //"/sys/class/android_usb/android0/f_adb",
    //"/sys/bus/usb",

    NULL
};
