FROM renovate/buildpack

# renovate: datasource=github-tags depName=nodejs/node versioning=node
ARG DUMMY=12.16.2

ARG NODE_VERSION=12

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


RUN /usr/local/build/node.sh

