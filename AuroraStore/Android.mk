LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := AuroraStore
LOCAL_SRC_FILES := AuroraStore.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
# LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
# these lines may break builds before 19.1 so make them conditional
ifneq ($(call math_gt_or_eq, $(PLATFORM_SDK_VERSION), 31),)
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
endif
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)
