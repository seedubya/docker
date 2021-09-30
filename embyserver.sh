#!/bin/bash
#
# emby Server in docker.
#
# Update procedure:
# 1. docker pull emby/embyserver_arm32v7
# 2. docker stop embyserver ; docker container rm embyserver
# 3. ./embyserver.sh
# 4.  remove old image of embyserver: (docker image ls ; docker image rm <image id>)
#

docker run --detach \
    -e GID=2 \
    -e UID=2 \
    -p 8096:8096 \
    -p 8920:8920 \
    -v /home/pi/docker_config/embyserver/programdata:/config \
    -v /mnt/mydisk/Media:/video \
    --name embyserver \
    --net=host \
    --restart=unless-stopped \
    emby/embyserver_arm32v7:latest
