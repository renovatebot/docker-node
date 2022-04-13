# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM renovate/buildpack:6@sha256:5ea5024208f7d0b1b865b4821913862fa2f958ca7a89ca86149ac96fd2a8539a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
