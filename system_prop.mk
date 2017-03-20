# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false \
    ro.sys.fw.dex2oat_thread_count=4

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

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome \
    bt.max.hfpclient.connections=1 \
    net.bt.name=Android

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    camera.disable_zsl_mode=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=false \
    ro.hdcp2.rx=tz \
    ro.qualcomm.cabl=1 \
    ro.secwvk=144 \
    ro.sf.lcd_density=560 \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    persist.hwc.enable_vds \
    sdm.perf_hint_window=50 \
    ro.opengles.version=196608 \

# Enable Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
   ro.opa.eligible_device=true

# Gps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

#Disable QC Oem Hook
#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.radio.oem_socket=false

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=true \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.add_power_save=1 \
    persist.radio.lte_vrat_report=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.net.doxlat=true \
    ro.telephony.mms_data_profile=5 \
    persist.cne.feature=0 \
    persist.cne.dpm=0 \
    persist.dpm.feature=0 \
    persist.radio.apm_mdm_not_pwdn=1 \
    persist.eons.enabled=true \
    persist.tcp.delack.enable=true \
    persist.qcril_uim_vcc_feature=1 \
    persist.radio.sib16_support=0

# IMS/VoLTE
# PRODUCT_PROPERTY_OVERRIDES += \
#    persist.radio.jbims=1 \
#    persist.radio.ignore_ims_wlan=1 \
#    persist.data.iwlan.enable=true \
#    persist.radio.ROTATION_ENABLE=1 \
#    persist.radio.VT_ENABLE=1 \
#    persist.radio.VT_HYBRID_ENABLE=1 \
#    persist.radio.VT_USE_MDM_TIME=0 \
#    persist.dbg.volte_avail_ovr=1 \
#    persist.dbg.vt_avail_ovr=1 \
#    persist.radio.lte_vrte_ltd=1 \
#    persist.radio.data_con_rprt=1 \
#    persist.rcs.supported=0 \
#    persist.ims.disableADBLogs=0 \
#    persist.ims.disableDebugLogs=0 \
#    persist.ims.disableIMSLogs=0 \
#    persist.ims.disableQXDMLogs=0 \
#    persist.radio.calls.on.ims=true

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=trlteRIL

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sensors=1

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# USB OTG interface
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.core_ctl_min_cpu=2 \
    ro.core_ctl_max_cpu=4 \
    ro.min_freq_0=300000 \
    ro.qualcomm.perf.cores_online=2

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Burn-in protection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.systemui.burn_in_protection=true

# Timeout failed shutdowns
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.shutdown_timeout=5

# AptX
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptXHD=true
