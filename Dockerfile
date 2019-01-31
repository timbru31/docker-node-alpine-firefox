FROM node:dubnium-alpine@sha256:f04334c40299fb140c5e69f2b0801d340424a44306740eda6454e06d38fef422
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
