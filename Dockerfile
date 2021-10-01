# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.0

FROM renovate/buildpack:5-node@sha256:652491f41ea523f851f567105c3db86641eaf72c9b2eab1e585b68dc16a73837

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
