RM		:= rm -rf
BUILD_DIR	:= build
CONF_DIR	:= conf

all:raspberry-pi

raspberry-pi:
	./scripts/build.sh rpi-image

raspberry-pi-sdk:
	./scripts/build_sdk.sh rpi-image

raspberry-pi-image:
	./scripts/build.sh -c clean rpi-image
	./scripts/build.sh rpi-image

burn:
	bash -c "sudo umount /dev/sdb*; \
		 sudo dd if=build/tmp-glibc/deploy/images/raspberrypi3/rpi-image-raspberrypi3.rpi-sdimg \
			of=/dev/sdb bs=4M; \
		 sync"

clean:
	-$(RM) $(BUILD_DIR)
