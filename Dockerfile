FROM renovate/buildpack:2-node@sha256:440c5df813ee4a1c19277f2c77b9dd1dd74704a332fdbadc8e7649f063cd34e3

# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
