# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM renovate/buildpack:6@sha256:77fc989698e57b2ea70b8997eedd7526e7789a8be03606b27b5f26e06e3badae

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
