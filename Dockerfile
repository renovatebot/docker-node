# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:7602b8ec506914038019dbbb055f9d9a402d1b1437bc85a530700c61ba1ce14c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
