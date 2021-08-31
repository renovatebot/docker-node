# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM renovate/buildpack:5-node@sha256:5f795852e8dfe717e30d30f83b4c53056617f054fce83db22a8a37ed9307752f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
