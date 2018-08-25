#!/usr/bin/env sh
set -e
adduser -u $PUID -s /bin/sh -h $PHOME -H $PUSER -D
export -n PGID
export -n PHOME
export -n PUID
export -n PUSER
su-exec $PUID:$PGID "$@"
