# If you want to compile for arm64e, you'll need a macOS device or a arm64e device that's able to compile for arm64e.
# Also, you'll have to remove '#import "KittyMemory/initializer_list"' from Menu.h for it being able to compile this menu.
# Once done that, uncomment the "#arm64e" by removing the "#"

ARCHS = arm64 

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
export THEOS=/var/mobile/theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Letovsky

Letovsky_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
Letovsky_CFLAGS = -fobjc-arc #-w #-Wno-deprecated -Wno-deprecated-declarations
Letovsky_FILES = Tweak.x $(wildcard views/*.m)
Letovsky_LIBRARIES += substrate
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 ShadowTrackerExtra || :"
