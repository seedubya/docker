#!/bin/bash
#
# emby Server in docker.
#

docker run --detach \
    -e GID=2 \
    -e UID=2 \
    -p 8096:8096 \
    -p 8920:8920 \
    -v /home/pi/docker_config/embyserver/programdata:/config \
    -v /share/video:/video \
    --name embyserver \
    --restart=unless-stopped \
    emby/embyserver_arm32v7:latest
