# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM renovate/buildpack:5-node@sha256:4fd18dda4406b3c892e30bd890a7a1f5e960ef280522697be768d922d63a52cd

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
