# renovate: datasource=npm depName=node versioning=node
ARG NODE_VERSION=14.17.1

FROM renovate/buildpack:5-node@sha256:56447fb07ea297848593ba334c6bcf7a05f94ecec9d117d2a31d82e7648c8ffa

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
