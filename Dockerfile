# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM renovate/buildpack:6@sha256:e9cf288c79c27968b94c48679a1b3b6cae42168ba73b18150dda1e590da30bbf

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
