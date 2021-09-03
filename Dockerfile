# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.6

FROM renovate/buildpack:5-node@sha256:886267a7961cdb841c8d87a217aceebeea603bbd500402a86f1347d7fb50728e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
