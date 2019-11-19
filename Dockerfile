FROM node:dubnium-alpine@sha256:b930ae34213b9bcda4ab598d16159cc2acfd5b26342eff536807d99106f4dd84
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
  libstdc++@edge
