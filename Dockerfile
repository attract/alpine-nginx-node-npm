FROM nginx:1.27.1-alpine-perl

ARG NODE_VERSION="18.20.4"

RUN apk update && apk upgrade --no-cache && apk add bash grep nano coreutils curl libgd apache2-utils supervisor htop

RUN curl -fsSL https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64-musl.tar.xz | tar -xJ -C /usr/local --strip-components=1

RUN rm -rf /usr/lib/node_modules/npm/node_modules/ip

EXPOSE 80 443
