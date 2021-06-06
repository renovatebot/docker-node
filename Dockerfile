# renovate: datasource=npm depName=node versioning=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:64b8737b3ef7a6e61f76bfa867ea101c07f13cc1a9cebed128a9fe87f4f38393

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
