FROM alpine:latest
MAINTAINER Anastas Dancha <anapsix@random.io>

RUN apk upgrade --update && apk add redis

ADD docker-entrypoint.sh /entrypoint.sh

VOLUME /var/lib/redis
EXPOSE 6379

ENTRYPOINT ["/entrypoint.sh"]
