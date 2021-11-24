# renovate: datasource=node depName=node
ARG NODE_VERSION=14.18.1

FROM renovate/buildpack:5@sha256:133a7bb0d8b622bfb9c4651de16c29ce05631ada1436988ed2a3bea78b37eb63

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
