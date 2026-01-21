FROM node:16-alpine

RUN apk add --no-cache git curl

RUN addgroup -S docker && addgroup jenkins docker
