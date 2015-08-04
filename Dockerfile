FROM gliderlabs/alpine

RUN apk add --update-cache \
  socat

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock