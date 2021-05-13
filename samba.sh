#!/bin/bash
#
# Build a usable SAMBA docker object.
#

docker run --detach \
    -e GLOBAL="ntlm auth=yes" \
    -e GLOBAL="server role = standalone server" \
    -e GROUPID="65534" \
    -e NMBD="yes" \
    -e RECYCLE="no" \
    -e SHARE1="backups;/mnt/mydisk/Backups;yes;no;yes;all;none;;Backups" \
    -e SHARE2="media;/mnt/mydisk/Media;yes;no;yes;all;none;;Media" \
    -e SMB="1" \
    -e TZ="Europe/London" \
    -e USERID="65534" \
    -e WORKGROUP="WORKGROUP" \
    -p 139:139 \
    -p 445:445 \
    -v /mnt/mydisk/Backups:/mnt/mydisk/Backups \
    -v /mnt/mydisk/Media:/mnt/mydisk/Media \
    --name samba \
    --restart=unless-stopped \
    dperson/samba:latest
