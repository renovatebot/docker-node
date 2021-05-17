# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:f70418b7d09fc867c61ce19fbec3862b1bbbb678173c03127e26f96b062cfbc8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
