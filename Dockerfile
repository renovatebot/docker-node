FROM renovate/base@sha256:3bd934a4709db3b91e32f005c6783b5407b2fac28be08da6b5c6cf91e4b2ec60

USER root

RUN apt-get update && apt-get install -y gpg curl xz-utils git openssh-client gpg-agent && apt-get clean -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs

RUN node --version

USER ubuntu

CMD [ "node" ]
