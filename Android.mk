# Board specific SELinux policy variable definitions
ifneq ($(TARGET_EXCLUDE_QCOM_SEPOLICY),true)
ifeq ($(call is-vendor-board-platform,QCOM),true)
LOCAL_PATH:= $(call my-dir)

# New Gen boards
ifeq (,$(filter sdm710 sdm845 msmnile trinket sm6150 kona lito atoll bengal, $(TARGET_BOARD_PLATFORM))
include $(LOCAL_PATH)/sepolicy.mk
endif

# Legacy boards
ifeq (,($filter msm8974 msm8610 msm8226 apq8084 msm8916 msm8994 msm8909 msm8992 msm8996 msm8952 msm8937 msm8953 msm8998 sdm660, $(TARGET_BOARD_PLATFORM))
include $(LOCAL_PATH)/legacy-um/sepolcy.mk
endif

endif
endif
