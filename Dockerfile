FROM node:gallium-alpine3.14
LABEL maintainer "Tim Brust <tim.brust@sinnerschrader.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN echo @edge https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
  && echo @edge https://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories \
  && echo @edge https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories  \
  && apk -U upgrade \
  && apk add --no-cache \
    firefox@edge \
    freetype@edge \
    ttf-freefont@edge \
    nss@edge \
    libstdc++@edge \
    sqlite-libs@edge
