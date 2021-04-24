# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.1

FROM renovate/buildpack:5-node@sha256:fac9f0b159ccd2ee06bf3d0083bcc26271bf4ca7e29466f8488775891e828bfa

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
