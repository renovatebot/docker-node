# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM renovate/buildpack:5-node@sha256:5f5ecaf698105c0989ca59506f039ad90e7472978567cedec15c5350de3cfda4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
