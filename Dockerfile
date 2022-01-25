# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.18.3

FROM renovate/buildpack:6@sha256:77153214dc7eefe4351b376dd0424253fa63ae75cf37097c0889fcb6dd1aa5c8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
