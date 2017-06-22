FROM node:7.8-slim

MAINTAINER Jason Reading <jason.reading@gmail.com>

# See: https://yarnpkg.com/lang/en/docs/install/

RUN apt-get update && \
        apt-get install -y curl apt-transport-https && \
        curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
        echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
        apt-get update && \
        apt-get install -y yarn && \
        rm -rf /var/lib/apt/lists/*
