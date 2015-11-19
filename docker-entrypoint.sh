#!/bin/sh
set -e

if [[ "${1}" == "start" ]]; then 
  echo "Starting Redis with defaults from /etc/redis.conf"
  exec gosu redis:redis redis-server /etc/redis.conf
elif [ "${1:0:1}" = "-" ]; then
  echo "Starting Redis with cli-set options only, no default config."
  exec gosu redis:redis redis-server $@
fi

exec "$@"
