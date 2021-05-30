# renovate: datasource=npm depName=node versioning=node
ARG NODE_VERSION=14.17.0

FROM renovate/buildpack:5-node@sha256:066eb11fc10efbde392d6db86a59e63360e2bae0c4d2df8af3ca534a61530d74

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
