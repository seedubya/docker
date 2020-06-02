#!/bin/bash
#
# Minecraft server
#

docker run --detach \
    -e AUTOPAUSE_TIMEOUT_EST="900" \
    -e AUTOPAUSE_TIMEOUT_INIT="300" \
    -e ENABLE_AUTOPAUSE="TRUE" \
    -e EULA="TRUE" \
    -e TZ="Europe/London" \
    -p 25565:25565 \
    -v "/home/pi/docker_config/minecraft:/data" \
    --name minecraft \
    --restart=unless-stopped \
    itzg/minecraft-server:multiarch

