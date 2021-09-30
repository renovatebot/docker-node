# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.0

FROM renovate/buildpack:5-node@sha256:55f53150eba1160c5892d853ad384c1cab67d3165b2ada711f6941d383cadf6c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
