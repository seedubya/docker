#!/bin/bash
#
# MiniDLNA in docker.
#

docker run --detach \
    -e MINIDLNA_FRIENDLY_NAME="zebedee - video library" \
    -e MINIDLNA_MEDIA_DIR="V,/video" \
    -e MINIDLNA_ROOT_CONTAINER="V" \
    -e TZ="Europe/London" \
    -v /share/video:/video \
    --name minidlna \
    --net=host \
    --restart=unless-stopped \
    fmartingr/minidlna-arm:latest
