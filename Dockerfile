FROM renovate/buildpack:2-node@sha256:f32eb15a54c440bd22d7d79eb09ee4d938279c8726e87dd34dbadb9fc290fc68

# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
