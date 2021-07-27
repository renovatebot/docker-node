# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM renovate/buildpack:5-node@sha256:14ea752ab84d5caf05711da5877bd6aebe71ca27a3692e0e82890787fdabf713

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
