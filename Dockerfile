# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.3

FROM renovate/buildpack:2-node@sha256:a05ad7cac1dfefe9d8c5d26db3d918138c04eeaa8ddefd2547180fb69a4e58e7


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
