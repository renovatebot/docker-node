# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.3

FROM renovate/buildpack:2-node@sha256:b0aae95d55264a80ab01c48ab992bd135e6aa88f01d130e8bf8fb40ab3d3129a


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
