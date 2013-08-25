include theos/makefiles/common.mk

TWEAK_NAME = Calabash
Calabash_FILES = Tweak.xm
Calabash_FRAMEWORKS = CFNetwork UIKit CoreGraphics
Calabash_PRIVATEFRAMEWORKS = Calabash
Calabash_LDFLAGS += -force_load "calabash.framework/calabash" -lstdc++

include $(THEOS_MAKE_PATH)/tweak.mk
