# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.3

FROM renovate/buildpack:2-node@sha256:65f54f2e4d101727b9215360a2009ef1e037b3d7b88861ed2a0842bf9eef8201


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
