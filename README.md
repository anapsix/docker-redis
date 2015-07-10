# Redis in a box

AlpineLinux-base Docker image with Redis

[![](https://badge.imagelayers.io/anapsix/redis:latest.svg)](https://imagelayers.io/?images=anapsix/redis:latest)

## Usage

as Server:

    docker run -d --name redis-server -p 6379:6379 -v /data/redis:/var/lib/redis anapsix/redis

as Client:

    docker run -it --rm --link redis-server:my-redis-server anapsix/redis redis-cli -h my-redis-server info
    docker run -it --rm anapsix/redis redis-cli -h redis-server-ip-or-host.com info

## Configuration

You may pass config options via command line, as you normally would:

    docker run -d -p 6379:6379 \
      -v /data/redis:/var/lib/redis \
      anapsix/redis --slaveof redismaster.acmecorp.com 6379

or use [CONFIG SET](http://redis.io/commands/config-set) to reconfigure it at run time.

> See Redis config documentation for details and options: [http://redis.io/topics/config](http://redis.io/topics/config)



