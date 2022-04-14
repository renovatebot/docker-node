# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM renovate/buildpack:6@sha256:2f71076c04e6835621d4775827c024d7a219f65a957cc38a5dcb7305f0bf0bad

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
