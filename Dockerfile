FROM renovate/base@sha256:8982602c621ebd5f43f5492af557f59bd486f25afb97af0e61546e2e127bb2af

USER root

RUN apt-get update && apt-get install -y gpg curl xz-utils git openssh-client gpg-agent && apt-get clean -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs &&\
    npm install -g npm@latest

RUN node --version
RUN npm --version

USER ubuntu

CMD [ "node" ]
