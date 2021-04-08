# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.1

FROM renovate/buildpack:5-node@sha256:2fc4ac216b459ace40068b0e2bc25bec336cbf1315e7332bbe066b64db8e4ad7

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
