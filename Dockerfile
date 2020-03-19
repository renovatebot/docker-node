FROM renovate/base@sha256:b45ec6293efd26f383d9c99adb44ef1df9f65564ec79a76bbcf9ff051b5be9cc

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
