#!/bin/bash
sudo docker run -d \
	--name=automation_zwave \
	--network=automation-cluster \
	-v /etc/localtime:/etc/localtime:ro \
	-v ./configs/zwave:/config \
	--device /dev/ttyACM0:/dev/ttyACM0 \
	--privileged \
	homeassistant/home-assistant:0.100.3
