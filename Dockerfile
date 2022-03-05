# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM renovate/buildpack:6@sha256:2279a1ffacff20ecae97dc0c2050b03e6d5550ce3a21f9389b503565671af243

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
