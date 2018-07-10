RM		:= rm -rf
BUILD_DIR	:= build
CONF_DIR	:= conf

all:raspberry-pi

raspberry-pi:
	DISTRO="raspberrypi" MACHINE="rpi-generic" \
	./scripts/build.sh rpi-image

clean:
	-$(RM) $(BUILD_DIR)
