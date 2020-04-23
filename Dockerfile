FROM renovate/buildpack:1@sha256:c14158942b964b13280672b69d55b7c59283b37bdc8804d3dfa3ff6211f9d17f

# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
