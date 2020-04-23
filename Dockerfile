FROM renovate/buildpack:1@sha256:e2e416bf17d2e58a8a6042a15dcb559048b11bc5e3143b7c7a33d38e01d8236a

# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
