FROM alpine:3.10

MAINTAINER zkhan93 <zkhan1093@gmail.com>

RUN apk update && \
	apk add --no-cache --update aria2

COPY aria2.conf /app/aria2.conf

EXPOSE 6800

ENTRYPOINT ["/usr/bin/aria2c", "--conf-path=/app/aria2.conf"]

