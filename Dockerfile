# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.13.2

FROM renovate/buildpack:6@sha256:efbf169c58f1796d2db2146ea8106a34580487e3de5000343fc7f6e6fc856223

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
