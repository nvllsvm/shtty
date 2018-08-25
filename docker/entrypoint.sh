#!/usr/bin/env sh
set -e
useradd -d $PHOME -u $PUID -g $PGID -s /bin/sh $PUSER &> /dev/null
export -n PGID
export -n PHOME
export -n PUID
export -n PUSER
su-exec $PUID:$PGID "$@"
