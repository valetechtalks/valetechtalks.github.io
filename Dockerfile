FROM node:8.17.0-alpine

COPY . /app
WORKDIR /app

VOLUME /app/node_modules

RUN yarn install