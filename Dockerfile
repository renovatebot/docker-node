# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.13.2

FROM renovate/buildpack:6@sha256:fa5ad9fcfbdf0f1833d53f6a70986658fb8083d5465058ed0eb75d30ad5e97b6

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
