#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := vendor/arduino/imola

# Adreno 702 GPU Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/a702_sqe.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a702_sqe.fw \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/a702_sqe.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/a702_sqe.fw \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/a702_zap.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/a702_zap.mbn

# Venus 6.0 Video Decoder Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/venus-6.0/venus.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-6.0/venus.mbn

# Audio DSP Firmware (Hexagon ADSP)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/adsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/adsp.mbn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/adspr.jsn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/adspr.jsn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/adsps.jsn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/adsps.jsn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/adspua.jsn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/adspua.jsn

# Modem & Wireless DSP Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/modem.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/modem.mbn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/modemr.jsn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/modemr.jsn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/modemuw.jsn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/modemuw.jsn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/wlanmdsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/wlanmdsp.mbn

# Ath10k Wi-Fi Firmware (WCN3990)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/board-2.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/board-2.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/firmware-5.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/qcm2290/firmware-5.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/qcm2290/wlanmdsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/qcm2290/wlanmdsp.mbn
