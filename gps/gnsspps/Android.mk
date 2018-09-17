ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libgnsspps
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_OWNER := qti
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libgps.utils \
    liblog

LOCAL_SRC_FILES += \
   gnsspps.c

LOCAL_CFLAGS += \
    -fno-short-enums \
    -D_ANDROID_ \
    -Wall \
    -Werror \
    -Wno-format \
    -Wno-sign-compare \
    -Wno-unneeded-internal-declaration \
    -Wno-unused-const-variable \
    -Wno-unused-parameter \
    -Wno-delete-incomplete \
    -Wno-switch

LOCAL_C_INCLUDES:= \
    $(TARGET_OUT_HEADERS)/gps.utils \
    $(TARGET_OUT_HEADERS)/libloc_pla

LOCAL_COPY_HEADERS_TO:= libgnsspps/
LOCAL_COPY_HEADERS:= \
    gnsspps.h \
    timepps.h

endif
