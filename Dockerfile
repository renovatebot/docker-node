# renovate: datasource=docker depName=node
ARG NODE_VERSION=12.19.0

FROM renovate/buildpack:2-node@sha256:203c519f416fb7006e67b2068d348a252951ef955b95ca9b9927e02f5e9ba96b


ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
