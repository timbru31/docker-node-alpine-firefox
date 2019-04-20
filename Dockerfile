FROM node:dubnium-alpine@sha256:313c5c88acc0ec12a9abca9a83719065dfd54e94ffc56464b7ce24998dd2838d
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
