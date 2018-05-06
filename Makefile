RM		:= rm -rf
BUILD_DIR	:= build
CONF_DIR	:= conf

all:raspberry-pi

poky:
	./scripts/build.sh core-image-minimal

raspberry-pi:
	MACHINE="raspberrypi" BUILD_DIR=pi_build \
	TEMPLATECONF=$(CURDIR)/sources/meta-raspberrypi/conf ./scripts/build.sh raspberrypi

clean:
	-$(RM) $(BUILD_DIR)
