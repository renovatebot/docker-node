# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM renovate/buildpack:6@sha256:152f4696d4df3330205e3832ee431af4ad43e299214f19a468054f12023c1fc1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
