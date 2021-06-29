################################################################################
#
# RE3_MIAMI MIAMI
#
################################################################################
# Version.: Commits on Jun 29, 2021
RE3_MIAMI_VERSION = de4699a97e40bef9ac00bce397f2f1f7190d93e8
RE3_MIAMI_SITE = $(call github,GTAmodding,re3_MIAMI,$(RE3_MIAMI_VERSION))
RE3_MIAMI_LICENSE = LGPLv3
RE3_MIAMI_DEPENDENCIES = sdl2 sdl2_mixer freetype pcre jpeg libpng cairo ffmpeg libcurl

define RE3_MIAMI_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/bin

	cp -pr $(@D)/$(BR2_ARCH)/Release/bin/RE3_MIAMI $(TARGET_DIR)/usr/bin/RE3_MIAMI
endef

$(eval $(cmake-package))
