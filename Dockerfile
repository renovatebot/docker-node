# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM renovate/buildpack:5-node@sha256:1a5391677b304c2da874e211b1cef4a8e488679114bb2882d794cd7b1c5429d3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
