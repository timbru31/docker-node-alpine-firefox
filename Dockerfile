FROM node:dubnium-alpine@sha256:7eb548509931c21b2afe959fefc80dbcd68d1baee92ec789dad8a0d885dca72c
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
