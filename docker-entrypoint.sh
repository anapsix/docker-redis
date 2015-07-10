#!/bin/sh
set -e

if [ "$#" -eq 0 ] || [ "${1:0:1}" = '-' ]; then
  set -- redis-server "$@"
fi

exec "$@"
