# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.1

FROM renovate/buildpack:5-node@sha256:f26da3b65380472a9d08a0ae796a1bffce43d86ac9be2b3c342e5dcbc2d0c3e6

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
