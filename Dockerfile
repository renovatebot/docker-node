# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM renovate/buildpack:6@sha256:3a6e579bc4384900d23393ffce71ed623fedfea41de341fd4124b271fc79558e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
