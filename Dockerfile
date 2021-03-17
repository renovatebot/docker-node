# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.0

FROM renovate/buildpack:4-node@sha256:aa820e53c07e152f21c425ee0041e5d5f7cef237cf641933a3d60255254b04c4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
