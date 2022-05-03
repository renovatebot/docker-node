# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM renovate/buildpack:6@sha256:caa20ff3672cee67fca6a1de14bbe68cec26eef952a70aa4b70978a6b002f56c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
