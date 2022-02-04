# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.13.2

FROM renovate/buildpack:6@sha256:5bf8905259d30781df51f06dcec57f085b328584a60e43d829947538d2b5c640

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
