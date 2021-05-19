# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:698f46a66208dabba6a2a916e00c651c138789f1f405a42309ff2a0a7e163eb9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
