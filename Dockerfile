FROM renovate/buildpack:1@sha256:7e28ef186596dc293af15d6c63febf1e424c3e832702864944b498b3050cac52

# renovate: datasource=github-tags depName=nodejs/node versioning=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
