# Redis in a box

AlpineLinux-base Docker image with Redis

[![](https://badge.imagelayers.io/anapsix/redis:latest.svg)](https://imagelayers.io/?images=anapsix/redis:latest)

## Usage

Quick start: `docker run -d -p 6379:6379 -v /data/redis:/var/lib/redis anapsix/redis`

### Configuration

You may pass config options via command line, as you normally would:

    docker run -d -p 6379:6379 \
      -v /data/redis:/var/lib/redis \
      anapsix/redis --slaveof redismaster.acmecorp.com 6379

or use [CONFIG SET](http://redis.io/commands/config-set) to reconfigure it at run time.

> See Redis config documentation for details and options: [http://redis.io/topics/config](http://redis.io/topics/config)



