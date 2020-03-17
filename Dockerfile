FROM renovate/base@sha256:175e2d040a8dbd7900d815621e386efed1ca9c4f40e5aaf1902d4632f1bf645f

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
