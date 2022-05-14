#!/bin/bash
#
# HomeBridge Server in docker.
#
# nicked from https://www.home-assistant.io/installation/raspberrypi
#
# update:
#    docker pull oznu/homebridge
#
# example docker compose:
##version: '2'
##services:
  ##homebridge:
    ##image: oznu/homebridge:ubuntu
    ##restart: always
    ##network_mode: host
    ##environment:
      ##- PGID=1000
      ##- PUID=1000
      ##- HOMEBRIDGE_CONFIG_UI=1
      ##- HOMEBRIDGE_CONFIG_UI_PORT=8581
      ##- TZ=Australia/Canberra
    ##volumes:
      ##- ./volumes/homebridge:/homebridge

docker run --detach \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/docker_config/homebridge/config:/config \
  --name homebridge \
  --net=host \
  --privileged \
  --restart=unless-stopped \
  oznu/homebridge:ubuntu
