# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.19.0

FROM renovate/buildpack:6@sha256:a4fa3dab0e86d5c55be7f0bfb76cce3148d742b3eeb8cddc9239cf8f2bf361cb

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
