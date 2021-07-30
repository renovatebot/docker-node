# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM renovate/buildpack:5-node@sha256:33356c66aa7c2f504a994bb0df90c1cf123119493eaa071995df0ce5a6ac8b66

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
