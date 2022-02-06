FROM alpine:3.10

LABEL maintainer="zkhan1093@gmail.com"

RUN apk update && \
	apk add --no-cache --update aria2

COPY aria2.conf /app/aria2.conf
COPY start.sh /app/start.sh
COPY scripts/* /app/scripts/


EXPOSE 6800

VOLUME ["/downloads"]

ENTRYPOINT ["/app/start.sh"]

