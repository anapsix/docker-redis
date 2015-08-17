#!/bin/sh
set -e

if ! expr match "$@" '\(.*dir\)'; then
  DIR="--dir /var/lib/redis"
fi

if [ "$#" -eq 0 ] || [ "${1:0:1}" = '-' ]; then 
  set -- redis-server "${DIR:+$DIR}" "$@"
fi

exec "$@"
