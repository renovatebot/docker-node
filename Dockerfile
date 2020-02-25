FROM renovate/base@sha256:db3e68b80043f9cb6227eb46053e2475a318b26bebbdfaecef69011c2291aabc

USER root

RUN apt-get update && apt-get install -y gpg curl xz-utils git openssh-client gpg-agent && apt-get clean -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs

RUN node --version

USER ubuntu

CMD [ "node" ]
