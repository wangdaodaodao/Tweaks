
THEOS_DEVICE_IP = 192.168.31.163
TARGET := iphone:clang:latest:7.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = wbnoads

wbnoads_FILES = Tweak.x
wbnoads_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
