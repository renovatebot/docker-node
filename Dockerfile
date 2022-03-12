# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM renovate/buildpack:6@sha256:d1a2e4c5a54bc134a59d3fc99e918f3329d5418a34cd9b63e9eaa79405b9172f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
