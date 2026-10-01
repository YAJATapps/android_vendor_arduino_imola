#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := vendor/arduino/imola

# Namespaces for Soong prebuilts
PRODUCT_SOONG_NAMESPACES += \
    vendor/arduino/imola

# Mesa3D Freedreno / Turnip / GLES / EGL / Vulkan Prebuilts
ifeq ($(TARGET_BUILD_MESA), true)
PRODUCT_PACKAGES += \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    libgallium_dri \
    libgbm_mesa \
    dri_gbm \
    vulkan.freedreno
endif

# Adreno 702 GPU Firmware (early boot ramdisk + vendor)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/a702_sqe.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/a702_sqe.fw \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/a702_zap.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/qcm2290/a702_zap.mbn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/a702_sqe.fw:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/qcom/a702_sqe.fw \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/qcm2290/a702_zap.mbn:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/qcom/qcm2290/a702_zap.mbn

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

# Qualcomm Bluetooth Firmware (WCN3988 / WCN3990)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/apbtfw10.tlv:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/apbtfw10.tlv \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/apbtfw11.tlv:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/apbtfw11.tlv \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/apnv10.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/apnv10.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/apnv11.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/apnv11.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crbtfw21.tlv:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crbtfw21.tlv \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crbtfw32.tlv:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crbtfw32.tlv \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crnv21.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crnv21.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crnv32.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crnv32.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crnv32u.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crnv32u.bin

# Arduino Router RPC Daemon
PRODUCT_PACKAGES += \
    arduino-router

# OpenOCD & ARM CoreSight SWD Hardware Prebuilts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/bin/openocd:$(TARGET_COPY_OUT_VENDOR)/bin/openocd \
    $(LOCAL_PATH)/proprietary/vendor/bin/openocd-launcher:$(TARGET_COPY_OUT_VENDOR)/bin/openocd-launcher \
    $(LOCAL_PATH)/proprietary/vendor/lib64/openocd/ld-linux-aarch64.so.1:$(TARGET_COPY_OUT_VENDOR)/bin/ld-linux-aarch64.so.1 \
    $(LOCAL_PATH)/proprietary/vendor/etc/openocd/openocd_gpiod.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/openocd/openocd_gpiod.cfg \
    $(LOCAL_PATH)/proprietary/vendor/etc/openocd/stm32u5x.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/openocd/stm32u5x.cfg \
    $(LOCAL_PATH)/proprietary/vendor/etc/openocd/stm32x5x_common.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/openocd/stm32x5x_common.cfg \
    $(LOCAL_PATH)/proprietary/vendor/lib64/openocd/ld-linux-aarch64.so.1:$(TARGET_COPY_OUT_VENDOR)/lib64/openocd/ld-linux-aarch64.so.1 \
    $(LOCAL_PATH)/proprietary/vendor/lib64/openocd/libc.so.6:$(TARGET_COPY_OUT_VENDOR)/lib64/openocd/libc.so.6 \
    $(LOCAL_PATH)/proprietary/vendor/lib64/openocd/libgpiod.so.3:$(TARGET_COPY_OUT_VENDOR)/lib64/openocd/libgpiod.so.3 \
    $(LOCAL_PATH)/proprietary/vendor/lib64/openocd/libgpiod.so.3.1.1:$(TARGET_COPY_OUT_VENDOR)/lib64/openocd/libgpiod.so.3.1.1 \
    $(LOCAL_PATH)/proprietary/vendor/etc/openocd/share/openocd/scripts/target/swj-dp.tcl:$(TARGET_COPY_OUT_VENDOR)/etc/openocd/share/openocd/scripts/target/swj-dp.tcl \
    $(LOCAL_PATH)/proprietary/vendor/etc/openocd/share/openocd/scripts/mem_helper.tcl:$(TARGET_COPY_OUT_VENDOR)/etc/openocd/share/openocd/scripts/mem_helper.tcl

