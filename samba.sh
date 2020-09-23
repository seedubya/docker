#!/bin/bash
#
# Build a usable SAMBA docker object for Sonos music hosting.
#

docker run --detach \
    -e GLOBAL="ntlm auth=yes" \
    -e GLOBAL="server role = standalone server" \
    -e GROUPID="65534" \
    -e NMBD="yes" \
    -e RECYCLE="no" \
    -e SHARE="music library;/share/music;yes;no;yes;all;none;;Music Library on Zebedee" \
    -e SHARE2="video library;/share/video;yes;no;yes;all;none;;Video Library on Zebedee" \
    -e SMB="1" \
    -e TZ="Europe/London" \
    -e USERID="65534" \
    -e WORKGROUP="WORKGROUP" \
    -p 139:139 \
    -p 445:445 \
    -v /share/music:/share/music \
    -v /share/video:/share/video \
    --name samba \
    --restart=unless-stopped \
    dperson/samba:latest
