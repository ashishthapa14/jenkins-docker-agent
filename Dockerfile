FROM node:16-alpine

RUN groupadd -for docker && usermod -aG docker jenkins

RUN apk add -U git curl
