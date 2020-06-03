# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.0

FROM renovate/buildpack:2-node@sha256:d2eaa8d410c0afefcf70b13adfc01d746bec3dd1f02729cb0eaeffc7d83a792c


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
