# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM renovate/buildpack:6@sha256:65dd16c78a3ff0c4ca6b2f65eaa923556b9186a1acb78bd4691733ed22008e9b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
