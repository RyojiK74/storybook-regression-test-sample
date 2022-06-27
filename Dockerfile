FROM node:16-alpine

RUN apk update && \
    apk add git && \
    apk add bash

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

CMD ["yarn", "dev"]
