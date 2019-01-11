FROM alpine:latest

RUN apk add --no-cache thttpd tini
ENTRYPOINT ["/sbin/tini", "--"]
EXPOSE 80
ENTRYPOINT ["thttpd", "-D"]
