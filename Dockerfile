FROM renovate/buildpack:1@sha256:aa28e984ed1a4cae5c2bb051e341637020951de5c199ff6de851a3f090cdb020

# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
