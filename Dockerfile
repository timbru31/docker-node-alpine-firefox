FROM node:erbium-alpine@sha256:5e1a147114839599442784549d04b45821c7b178f7fc09d4ab9853543ae1388e
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
