# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.speaker=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    use.voice.path.for.pcm.voip=false \
    use.dedicated.device.for.voip=true \
    audio.offload.buffer.size.kb=32 \
    av.offload.enable=true \
    av.streaming.offload.enable=true \
    audio.offload.multiple.enabled=false \
    audio.offload.gapless.enabled=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=false \
    ro.hdcp2.rx=tz \
    ro.qualcomm.cabl=1 \
    ro.secwvk=144 \
    ro.sf.lcd_density=520 \
    ro.opengles.version=196608

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=true \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.add_power_save=1 \
    persist.radio.lte_vrat_report=1 \
    ro.telephony.mms_data_profile=5

# Ril
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=trlteRIL

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sensors=1

# USB OTG interface
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.core_ctl_min_cpu=2 \
    ro.core_ctl_max_cpu=4 \
    ro.min_freq_0=300000 \
    ro.qualcomm.perf.cores_online=2
