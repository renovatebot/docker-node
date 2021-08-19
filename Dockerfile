# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM renovate/buildpack:5-node@sha256:10a23dcec78df6bc675dd098ca3f280c1f69a79aaff158833ce30ac175c9696a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
