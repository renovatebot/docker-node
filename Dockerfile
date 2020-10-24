# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.19.0

FROM renovate/buildpack:2-node@sha256:ac53ba10a9de6afba6d9fa2bf4d1b0445e1a1dcd058c88bfbcd92c10c41b31b7


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
