FROM node:erbium-alpine@sha256:ab1da8940186f91c9ce0b2b655eabef39f0e43f00f0581168c21f9359d7b23ea
LABEL maintainer "Tim Brust <tim.brust@sinnerschrader.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
  echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
  echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache \
  firefox@edge \
  freetype@edge \
  ttf-freefont@edge \
  nss@edge \
  libstdc++@edge \
  sqlite-libs@edge
