# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.2

FROM renovate/buildpack:2-node@sha256:dd2a03d6c0dc65acd7744fe38fe8d8800fe1fee79e3a35b31f0f5f47ec05a087


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
