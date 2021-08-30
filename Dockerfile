# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM renovate/buildpack:5-node@sha256:7400f34ddfb99621c5f0cdbe87ec20dc77a82c9a08ab49ba5f7bb01667a5d6f9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
