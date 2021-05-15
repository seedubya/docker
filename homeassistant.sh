#!/bin/bash
#
# HomeAssistant Server in docker.
#
# nicked from https://www.home-assistant.io/installation/raspberrypi
#
##docker run --init -d \
  ##--name homeassistant \
  ##--restart=unless-stopped \
  ##-v /etc/localtime:/etc/localtime:ro \
  ##-v /PATH_TO_YOUR_CONFIG:/config \
  ##--network=host \
  ##homeassistant/raspberrypi4-homeassistant:stable

docker run --detach \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/docker_config/homeassistant/config:/config \
  --name homeassistant \
  --net=host \
  --restart=unless-stopped \
  homeassistant/raspberrypi4-homeassistant:stable

