FROM node:8.17.0-alpine

RUN apk add --no-cache git

COPY . /app
WORKDIR /app

VOLUME /app/node_modules

RUN yarn install