# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM renovate/buildpack:6@sha256:25a230dba60f8e5b7dc607a471be5d214ed8cd23a2e1551879c820c688f575f9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
