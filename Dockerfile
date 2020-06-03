# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.18.0

FROM renovate/buildpack:2-node@sha256:d9bf882d42387eda98f643e35f1eff9c85f877d418e165cb1f97238520d5f277


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
