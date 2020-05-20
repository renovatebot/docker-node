# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.3

FROM renovate/buildpack:2-node@sha256:e006ec31c92890df0f31e39652539aa7c2cc293abc4cde7b8c79f7d044389501


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
