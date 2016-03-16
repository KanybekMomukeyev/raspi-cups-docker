#!/bin/sh
set -e
set -x

nginx -g 'daemon off;' &

exec /usr/sbin/cupsd -f
