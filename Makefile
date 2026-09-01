THEOS_PACKAGE_SCHEME = rootless

ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NineLS

NineLS_FILES = NineLS.xm support/MarqueeLabel.m

NineLS_FRAMEWORKS = UIKit CoreGraphics QuartzCore MediaPlayer AVFoundation AudioToolbox
NineLS_PRIVATE_FRAMEWORKS = MediaRemote

NineLS_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
