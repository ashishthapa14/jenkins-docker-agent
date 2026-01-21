FROM node:16-alpine

USER root

RUN apk add --no-cache git curl docker-cli
