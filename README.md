Start of a Fairphone CM12 port.

git tree to be checked out as device/fairphone/fp2

Following https://wiki.cyanogenmod.org/w/Doc:_porting_intro until
"Make the kernel and kernel modules build from source"

At this stage a working recovery can be built (e.g most probably make recoveryimage)


# Repo config

`.repo/local_manifests/fp2.xml`
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="Roboe/android_device_fairphone_fp2" path="device/fairphone/fp2" remote="github" revision="cm-12.1" />
  <project name="Roboe/android_kernel_fairphone_fp2" path="kernel/fairphone/fp2" remote="github" revision="cm-12.1" />
</manifest>
```


# Device configuration for Fairphone 2

## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Quad-core 2.26 GHz Krait 400      |
| Chipset                 | Qualcomm MSM8974AB Snapdragon 801 |
| GPU                     | Adreno 330                        |
| Memory                  | 2GB RAM LPDDR3                    |
| Shipped Android Version | 5.1                               |
| Storage                 | 32GB eMMC5                        |
| MicroSD                 | Up to 128GB                       |
| Battery                 | 2420 mAh at 3.8V (9.2 Wh)         |
| Dimensions              | 143 x 73 x 11 mm                  |
| Display                 | 1080 x 1920 pixels, LCD TFT/IPS   |
| Camera                  | 8MP CMOS, Omnivision OV8865       |
| Release Date            | December 2015                     |