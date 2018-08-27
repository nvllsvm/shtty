#!/usr/bin/env sh
set -e
adduser -u $PUID -s /bin/sh -h $PHOME -H $PUSER -D
cat >> /etc/sudoers<<EOF
$PUSER ALL=(ALL) NOPASSWD: ALL
EOF
export -n PGID
export -n PHOME
export -n PUID
export -n PUSER
su-exec $PUID:$PGID "$@"
