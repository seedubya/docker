#!/bin/bash
#
# Build a usable SAMBA docker object for Sonos music hosting.
#

docker run --detach \
    -e GLOBAL="ntlm auth=yes" \
    -e GLOBAL="server role = standalone server" \
    -e NMBD="yes" \
    -e SHARE="music library;/share/music;yes;no;yes;all;none;;Music Library on Zebedee" \
    -e SMB="1" \
    -e TZ="Europe/London" \
    -e WORKGROUP="WORKGROUP" \
    -p 139:139 \
    -p 445:445 \
    -v /share/music:/share/music \
    --name samba \
    --net=host \
    --restart=unless-stopped \
    dperson/samba:latest
