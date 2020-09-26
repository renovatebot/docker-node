# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.4

FROM renovate/buildpack:2-node@sha256:476afc8aec44bd91512b5f5f52ac0af5fbbf1540ee7740f8b7cdbeb2593827e5


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
