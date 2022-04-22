# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM renovate/buildpack:6@sha256:2121883488725eb2fc90b9c2886b2a7e21d27054c4ee6f671667b9a029b3722d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
