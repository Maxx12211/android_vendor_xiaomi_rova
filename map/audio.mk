# vim: set fdm=marker:
# ACDB (Audio Calibration Database) {{{
$(call copy-vendor-files, \
    etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    etc/acdbdata/QRD/QRD_General_cal.acdb \
    etc/acdbdata/QRD/QRD_Global_cal.acdb \
    etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
    etc/acdbdata/QRD/QRD_workspaceFile.qwsp \
)
# }}}

# aDSP (Hexagon Low-power Audio Digital Signal Processor) {{{
$(call copy-vendor-files, \
    bin/adsprpcd \
    bin/dspservice \
    etc/init/vendor.qti.adsprpc-guestos-service.rc \
    etc/init/vendor.qti.hardware.dsp@1.0-service.rc \
    etc/seccomp_policy/vendor.qti.hardware.dsp.policy \
    lib/libfastcvadsp_stub.so \
    lib/libfastcvopt.so \
    lib/libsysmon_cdsp_skel.so \
    lib/vendor.qti.hardware.dsp@1.0.so \
    lib64/libadsp_default_listener.so \
    lib64/libadsprpc.so \
    lib64/libsysmon_cdsp_skel.so \
    lib64/vendor.qti.hardware.dsp@1.0.so \
)
# }}}

# aDSP Modules {{{
$(call copy-vendor-files, \
    lib/rfsa/adsp/libapps_mem_heap.so \
    lib/rfsa/adsp/libdspCV_skel.so \
    lib/rfsa/adsp/libfastcvadsp.so \
    lib/rfsa/adsp/libfastcvadsp_skel.so \
    lib/rfsa/adsp/libscveObjectSegmentation_skel.so \
    lib/rfsa/adsp/libscveT2T_skel.so \
)
# }}}

# ADSP modules (Dirac) {{{
$(call copy-vendor-files, \
    lib/rfsa/adsp/dirac_resource.dar \
    lib/rfsa/adsp/libdirac-capiv2.so \
)
# }}}

# Audio {{{
PRODUCT_PACKAGES += libaudioparsers
$(call copy-vendor-files, \
    lib/btaudio_offload_if.so \
    lib/libacdb-fts.so \
    lib/libacdbloader.so \
    lib/libacdbrtac.so \
    lib/libadiertac.so \
    lib/libadm.so \
    lib/libadpcmdec.so \
    lib/libaudcal.so \
    lib/libaudio_log_utils.so \
    lib/libbluetooth_audio_session_qti.so \
    lib/libdiag.so \
    lib/libdrc.so \
    lib/libgcs-calwrapper.so \
    lib/libgcs-ipc.so \
    lib/libgcs-osal.so \
    lib/libgcs.so \
    lib/libhdmipassthru.so \
    lib/libmulawdec.so \
    lib/libqtigef.so \
    lib/libsmwrapper.so \
    lib/libsurround_3mic_proc.so \
    lib/libthermalclient.so \
)
# }}}

# Audio Dirac {{{
$(call copy-vendor-files, \
    lib/libDiracAPI_SHARED.so \
    lib/soundfx/libdirac.so \
    etc/diracmobile.config \
)
# }}}

# Audio Dobly {{{
$(call copy-vendor-files, \
    lib/libstagefright_soft_ac4dec.so \
    lib/libstagefright_soft_ddpdec.so \
    bin/hw/vendor.dolby.hardware.dms@1.0-service \
    etc/init/vendor.dolby.hardware.dms@1.0-service.rc \
    lib/libdapparamstorage.so \
    lib/libstagefrightdolby.so \
    lib/soundfx/libswdap.so \
    vendor.dolby.hardware.dms@1.0.so \
    lib64/libdapparamstorage.so \
    lib64/libdlbdsservice.so \
    lib64/soundfx/libswdap.so \
    lib64/vendor.dolby.hardware.dms@1.0-impl.so \
    lib64/vendor.dolby.hardware.dms@1.0.so \
)
# }}}

# Dolby {{{
$(call copy-system-ext-files, \
    etc/permissions/com.dolby.daxservice.xml \
    etc/permissions/com.motorola.dolby.dolbyui.features.xml \
    etc/sysconfig/hiddenapi-whitelist-com.motorola.dolby.dolbyui.xml \
)
# }}}

# Audiosphere {{{
$(call copy-system-ext-files, \
    etc/permissions/audiosphere.xml \
    framework/audiosphere.jar \
)
$(call copy-vendor-files, lib/soundfx/libasphere.so)
# }}}

# HotwordEnrollment {{{
PRODUCT_PACKAGES += \
    HotwordEnrollmentOKGoogleHEXAGON \
    HotwordEnrollmentXGoogleHEXAGON \
    com.android.hotwordenrollment.common.util
$(call copy-product-files, etc/permissions/privapp-permissions-google-hotword.xml)
$(call copy-system-ext-files, etc/permissions/com.android.hotwordenrollment.common.util.xml)
# }}}
