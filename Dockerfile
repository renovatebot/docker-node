# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.0

FROM renovate/buildpack:4-node@sha256:b5842a1497e413533fe31bff3aaecec0d634a2c7e1e41aca5fe19065066c52dd

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
