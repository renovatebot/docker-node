# renovate: datasource=npm depName=node versioning=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:e384a27a172d791ccb436e012b728c65ffd1bd5871725fdaf96f3194e2bc195c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
