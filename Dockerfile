FROM renovate/base@sha256:db3e68b80043f9cb6227eb46053e2475a318b26bebbdfaecef69011c2291aabc

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
