# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.3

FROM renovate/buildpack:6@sha256:7398bc9049466f40277fbf6dd1f8eecefb3719699c54927443b686d971b221e9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
