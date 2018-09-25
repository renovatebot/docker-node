FROM node:8.12.0
RUN groupadd -g 999 docker
RUN usermod -aG docker node
