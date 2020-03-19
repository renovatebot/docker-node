FROM renovate/base@sha256:d694b03ba0df63ac9b27445e76657d4ed62898d721b997372aab150ee84e07a1

USER root

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

# renovate: datasource=npm depName=npm
ENV NPM_VERSION 6.14.2

RUN apt-get install -y nodejs &&\
    npm install -g npm@${NPM_VERSION}

RUN node --version
RUN npm --version

USER 1000

CMD [ "node" ]
