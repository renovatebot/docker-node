# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM renovate/buildpack:5-node@sha256:f53ad9f291e0fec0f749cf7d89d3f2dce5076f2c6ad43a906bf8641ac8041c57

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
