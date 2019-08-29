#! /bin/bash

docker run \
	--name zigbee2mqtt \
	--restart=always \
	-d \
	-v /home/pi/zigbee/data:/app/data \
	-v /home/pi/zigbee/zigbee-shepherd-converters:/app/node_modules/zigbee-shepherd-converters \
	-v /home/pi/zigbee/zigbee2mqtt/lib/extension/homeassistant.js:/app/lib/extension/homeassistant.js \
	--device=/dev/serial/by-id/usb-Texas_Instruments_TI_CC2531_USB_CDC___0X00124B0019367AA2-if00:/dev/ttyACM0 \
	-e TZ=Europe/London \
	koenkk/zigbee2mqtt:arm32v6-dev

#	-e DEBUG=* \

