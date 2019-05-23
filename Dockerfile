FROM node:dubnium-alpine@sha256:aa28f3b6b4087b3f289bebaca8d3fb82b93137ae739aa67df3a04892d521958e
LABEL maintainer "Tim Brust <tim.brust@sinnerschrader.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
  echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
  echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache \
  firefox@edge \
  freetype@edge \
  ttf-freefont@edge
