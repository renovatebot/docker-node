# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.0

FROM renovate/buildpack:4-node@sha256:bde9b3d2e509194c3287d6e23435bd5ee87ea717efcf5016950b9422cdab9b08

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
