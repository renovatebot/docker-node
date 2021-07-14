# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM renovate/buildpack:5-node@sha256:d25c613c76db889bd233984a0fca4f6c8ad0dbca6474522a30c73d21289986fe

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
