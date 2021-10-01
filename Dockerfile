# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.0

FROM renovate/buildpack:5-node@sha256:e863bf1962d36ffaa3761456930f510c76c573f17dfde0b6f17757989909b8c7

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
