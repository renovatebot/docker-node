# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.4

FROM renovate/buildpack:2-node@sha256:188f5b9d407f68c542dd83e5c222f89131d510ef35224fa7146a99fc70cdcc75


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
