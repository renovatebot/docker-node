# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.6

FROM renovate/buildpack:5-node@sha256:bb3e9d40dd918caae9afdb28e4a458dac790e792796bf1ac3c06b3965d3ee0f3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
