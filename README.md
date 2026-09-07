# Proprietary Vendor Blobs for Qualcomm QRB2210 / QCM2290 (Arduino Uno Q)

This repository contains prebuilt proprietary firmware blobs, DSP binaries, and graphics acceleration libraries required for LineageOS 23.2 on Qualcomm QRB2210 / QCM2290 (Arduino Uno Q / `imola`) devices.

---

## 1. Qualcomm Firmware Blobs
- **Source**: Extracted directly from stock vendor firmware images.
- **Components**:
  - **Adreno 702 GPU**:
    - `proprietary/vendor/firmware/a702_sqe.fw` -> `/vendor/firmware/a702_sqe.fw`
    - `proprietary/vendor/firmware/qcom/a702_sqe.fw` -> `/vendor/firmware/qcom/a702_sqe.fw`
    - `proprietary/vendor/firmware/qcom/qcm2290/a702_zap.mbn` -> `/vendor/firmware/qcom/qcm2290/a702_zap.mbn`
  - **Venus 6.0 Video Decoder**:
    - `proprietary/vendor/firmware/qcom/venus-6.0/venus.mbn` -> `/vendor/firmware/qcom/venus-6.0/venus.mbn`
  - **Hexagon Audio DSP (ADSP)**:
    - `proprietary/vendor/firmware/qcom/qcm2290/adsp.mbn` -> `/vendor/firmware/qcom/qcm2290/adsp.mbn`
    - `proprietary/vendor/firmware/qcom/qcm2290/adspr.jsn` -> `/vendor/firmware/qcom/qcm2290/adspr.jsn`
    - `proprietary/vendor/firmware/qcom/qcm2290/adsps.jsn` -> `/vendor/firmware/qcom/qcm2290/adsps.jsn`
    - `proprietary/vendor/firmware/qcom/qcm2290/adspua.jsn` -> `/vendor/firmware/qcom/qcm2290/adspua.jsn`
  - **Hexagon Modem & Wireless Subsystem**:
    - `proprietary/vendor/firmware/qcom/qcm2290/modem.mbn` -> `/vendor/firmware/qcom/qcm2290/modem.mbn`
    - `proprietary/vendor/firmware/qcom/qcm2290/modemr.jsn` -> `/vendor/firmware/qcom/qcm2290/modemr.jsn`
    - `proprietary/vendor/firmware/qcom/qcm2290/modemuw.jsn` -> `/vendor/firmware/qcom/qcm2290/modemuw.jsn`
    - `proprietary/vendor/firmware/qcom/qcm2290/wlanmdsp.mbn` -> `/vendor/firmware/qcom/qcm2290/wlanmdsp.mbn`

---

## 2. Wi-Fi & Bluetooth Firmware Blobs
- **Source**: Extracted from vendor firmware images for Qualcomm WCN3988 / WCN3990.
- **Ath10k Wi-Fi (WCN3990)**:
  - `proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/board-2.bin` -> `/vendor/firmware/ath10k/WCN3990/hw1.0/board-2.bin`
  - `proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin` -> `/vendor/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin`
  - `proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn` -> `/vendor/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn`
  - `proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/firmware-5.bin` -> `/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/firmware-5.bin`
  - `proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/wlanmdsp.mbn` -> `/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/wlanmdsp.mbn`
- **Qualcomm Bluetooth (WCN3988 / WCN3990)**:
  - `proprietary/vendor/firmware/qca/apbtfw10.tlv` -> `/vendor/firmware/qca/apbtfw10.tlv`
  - `proprietary/vendor/firmware/qca/apbtfw11.tlv` -> `/vendor/firmware/qca/apbtfw11.tlv`
  - `proprietary/vendor/firmware/qca/apnv10.bin` -> `/vendor/firmware/qca/apnv10.bin`
  - `proprietary/vendor/firmware/qca/apnv11.bin` -> `/vendor/firmware/qca/apnv11.bin`
  - `proprietary/vendor/firmware/qca/crbtfw21.tlv` -> `/vendor/firmware/qca/crbtfw21.tlv`
  - `proprietary/vendor/firmware/qca/crbtfw32.tlv` -> `/vendor/firmware/qca/crbtfw32.tlv`
  - `proprietary/vendor/firmware/qca/crnv21.bin` -> `/vendor/firmware/qca/crnv21.bin`
  - `proprietary/vendor/firmware/qca/crnv32.bin` -> `/vendor/firmware/qca/crnv32.bin`
  - `proprietary/vendor/firmware/qca/crnv32u.bin` -> `/vendor/firmware/qca/crnv32u.bin`

---

## 3. Mesa3D Freedreno / Turnip (Adreno 702) Graphics Acceleration Prebuilts
- **Version**: Mesa 26.2.2 (Release)
- **Source**: Built out-of-tree using the standalone cross-compilation pipeline script:
  - Gist: [https://gist.github.com/YAJATapps/5589c3c4d32e02cd6c34dcdb9501aacc](https://gist.github.com/YAJATapps/5589c3c4d32e02cd6c34dcdb9501aacc)
- **Components**:
  - `libgallium_dri.so`: Gallium Freedreno driver (`/vendor/lib64/libgallium_dri.so`)
  - `libgbm_mesa.so` / `dri_gbm.so`: Mesa GBM buffer allocation backends (`/vendor/lib64/libgbm_mesa.so`, `/vendor/lib64/dri_gbm.so`)
  - `libEGL.so`, `libGLESv1_CM.so`, `libGLESv2.so`: OpenGL ES 1.1 / 2.0 / 3.1 drivers (`/vendor/lib64/egl/`)
  - `vulkan.freedreno.so`: Turnip Vulkan driver (`/vendor/lib64/hw/vulkan.freedreno.so`)
