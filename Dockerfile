FROM node:dubnium-alpine@sha256:8ac058c7735e957c455dea33bce69c90e3dd83793e0c8ef6f8d73d6a894980c3
LABEL maintainer "Tim Brust <tim.brust@sinnerschrader.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN apk add --no-cache \
  ttf-freefont \
  sqlite-libs

RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ --allow-untrusted --no-cache \
  icu-libs

RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache \
  firefox
