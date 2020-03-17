FROM renovate/base@sha256:e5b345a291cb0cdab29449c9b031b5ff8e0316e2b02396b97451130588fd3d4f

USER root

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

# renovate: datasource=npm depName=npm
ENV NPM_VERSION 6.14.2

RUN apt-get install -y nodejs &&\
    npm install -g npm@${NPM_VERSION} &&\
    chown -R ubuntu:0 /home/ubuntu/.config

RUN node --version
RUN npm --version

USER 1000

CMD [ "node" ]
