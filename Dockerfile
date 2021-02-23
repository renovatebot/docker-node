# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.0

FROM renovate/buildpack:4-node@sha256:b11ea0bdb090eb9c4b56e063bf7294b51db5f2c8ba5513eba9b9104d7c50c472

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
