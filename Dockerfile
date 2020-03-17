FROM renovate/base@sha256:db3e68b80043f9cb6227eb46053e2475a318b26bebbdfaecef69011c2291aabc

USER root

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs &&\
    npm install -g npm@latest

RUN node --version
RUN npm --version

USER 1000

CMD [ "node" ]
