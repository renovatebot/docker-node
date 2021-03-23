# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.0

FROM renovate/buildpack:4-node@sha256:0946946d5bfeda97d60f190f1aca60ba013a5b9c85ad5681e88c08b76fa90bd2

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
