FROM alpine:latest

RUN apk update && apk upgrade
RUN apk --no-cache add git openssh

WORKDIR /home
