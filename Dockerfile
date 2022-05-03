# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM renovate/buildpack:6@sha256:353a7ca6806ae6aaf4efc2f15e80b07218261eb5198dcaf0816e1c56ac5b3045

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
