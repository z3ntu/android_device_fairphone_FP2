# Fairphone 2 CM12.1 port

- CyanogenMod porting guide: https://wiki.cyanogenmod.org/w/Doc:_porting_intro

- Build guide: https://forum.fairphone.com/t/pencil2-porting-cyanogenmod/20254
- Development thread: https://forum.fairphone.com/t/fairphone-2-and-cyanogenmod/10399/last


# Repo config

`.repo/local_manifests/fp2.xml`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="WeAreFairphone/android_device_fairphone_fp2" path="device/fairphone/fp2" remote="github" revision="cm-12.1" />
  <project name="WeAreFairphone/android_kernel_fairphone_fp2" path="kernel/fairphone/fp2" remote="github" revision="cm-12.1" />
  
  <!-- Dependencies -->
  <project name="CyanogenMod/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-12.1" />
  <project name="CyanogenMod/android_hardware_qcom_fm" path="hardware/qcom/fm" remote="github" revision="cm-12.1" />
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
