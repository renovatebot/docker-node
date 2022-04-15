# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM renovate/buildpack:6@sha256:dfc0c4f0a2f3bee71bafceaa1f77df72f798817aa8de161b98c9d993828c5081

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
