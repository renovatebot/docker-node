# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.2

FROM renovate/buildpack:2-node@sha256:f577c57dd732d0a4a4a00b4c280d9826a2f0e3d49efd56feb78c00c5c043fc3f


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
