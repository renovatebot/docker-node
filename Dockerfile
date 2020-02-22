FROM renovate/base@sha256:bd80fcf8144d9f5b6cadd03a1e56e7d11cde83a29c31181845f33e2fb275d296

USER root

RUN apt-get update && apt-get install -y gpg curl xz-utils git openssh-client gpg-agent && apt-get clean -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs

RUN node --version

USER ubuntu

CMD [ "node" ]
