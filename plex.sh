#!/bin/bash
#
# plex Server in docker.
#
# Update procedure (TBC):
# 1. docker pull lscr.io/linuxserver/plex:latest
# 2. docker stop plex ; docker container rm plex
# 3. ./plex.sh
# 4.  remove old image of plex: (docker image ls ; docker image rm <image id>)
#

docker run --detach \
    -e PLEX_CLAIM="claim-ws7K2XP7-zXtZGL4Szcr" \
    -e PGID=1000 \
    -e PUID=1000 \
    -e TZ="Europe/London" \
    -v /home/pi/docker_config/plex/:/config \
    -v /mnt/mydisk/Transcode:/transcode \
    -v /mnt/mydisk/Media/Movies:/movies \
    -v /mnt/mydisk/Media/TV:/tv \
    --name plex \
    --net=host \
    --privileged \
    --restart=unless-stopped \
    lscr.io/linuxserver/plex:latest
