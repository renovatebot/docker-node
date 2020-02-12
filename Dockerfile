FROM renovate/base@sha256:425389d5a378779ee8df755ed4cc40a031aaffae3594e8f7200811efaa5f9e00

USER root

RUN apt-get update && apt-get install -y gpg curl xz-utils git openssh-client gpg-agent && apt-get clean -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs

RUN node --version

ENV NPM_VERSION 6.13.7

RUN npm install -g npm@$NPM_VERSION

RUN npm --version

CMD [ "node" ]

USER ubuntu
