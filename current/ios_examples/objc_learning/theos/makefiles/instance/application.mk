ifeq ($(_THEOS_RULES_LOADED),)
include $(THEOS_MAKE_PATH)/rules.mk
endif

.PHONY: internal-application-all_ internal-application-stage_ internal-application-compile

AUXILIARY_LDFLAGS += -framework UIKit

LOCAL_INSTALL_PATH ?= $(strip $($(THEOS_CURRENT_INSTANCE)_INSTALL_PATH))
ifeq ($(LOCAL_INSTALL_PATH),)
	LOCAL_INSTALL_PATH = /Applications
endif

ifeq ($(_THEOS_MAKE_PARALLEL_BUILDING), no)
internal-application-all_:: $(_OBJ_DIR_STAMPS) $(THEOS_OBJ_DIR)/$(THEOS_CURRENT_INSTANCE)$(TARGET_EXE_EXT)
else
internal-application-all_:: $(_OBJ_DIR_STAMPS)
	$(ECHO_NOTHING)$(MAKE) --no-print-directory --no-keep-going \
		internal-application-compile \
		_THEOS_CURRENT_TYPE=$(_THEOS_CURRENT_TYPE) THEOS_CURRENT_INSTANCE=$(THEOS_CURRENT_INSTANCE) _THEOS_CURRENT_OPERATION=compile \
		THEOS_BUILD_DIR="$(THEOS_BUILD_DIR)" _THEOS_MAKE_PARALLEL=yes$(ECHO_END)

internal-application-compile: $(THEOS_OBJ_DIR)/$(THEOS_CURRENT_INSTANCE)$(TARGET_EXE_EXT)
endif

$(eval $(call _THEOS_TEMPLATE_DEFAULT_LINKING_RULE,$(THEOS_CURRENT_INSTANCE)$(TARGET_EXE_EXT)))

ifeq ($($(THEOS_CURRENT_INSTANCE)_BUNDLE_NAME),)
LOCAL_BUNDLE_NAME = $(THEOS_CURRENT_INSTANCE)
else
LOCAL_BUNDLE_NAME = $($(THEOS_CURRENT_INSTANCE)_BUNDLE_NAME)
endif

THEOS_SHARED_BUNDLE_RESOURCE_PATH = $(THEOS_STAGING_DIR)$(LOCAL_INSTALL_PATH)/$(LOCAL_BUNDLE_NAME).app
include $(THEOS_MAKE_PATH)/instance/shared/bundle.mk

internal-application-stage_:: shared-instance-bundle-stage
	$(ECHO_NOTHING)mkdir -p "$(THEOS_SHARED_BUNDLE_RESOURCE_PATH)"$(ECHO_END)
	$(ECHO_NOTHING)cp $(THEOS_OBJ_DIR)/$(THEOS_CURRENT_INSTANCE)$(TARGET_EXE_EXT) "$(THEOS_SHARED_BUNDLE_RESOURCE_PATH)"$(ECHO_END)

$(eval $(call __mod,instance/application.mk))
