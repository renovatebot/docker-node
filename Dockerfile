# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.3

FROM renovate/buildpack:2-node@sha256:126c20a6f6fcb49da0ecace0dad0d83808384b08c3d43b7deaf5aad1a1635442


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
