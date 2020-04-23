FROM renovate/buildpack:1@sha256:10e98460170e2ed4ea5150f5baefe0589c60bd8c63bf1f06fac5b8a61b61040d

# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
