# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.3

FROM renovate/buildpack:2-node@sha256:820d8068b729d39ea0e6532c664df95427c938078b3c6fd01419967cb7de6a31


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
