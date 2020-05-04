FROM renovate/buildpack:2-node@sha256:5972cd297dca735bbb52a34c1115834efd2cd2e8da7e03fd1e560dad5b994624

# renovate: datasource=npm depName=node
ARG NODE_VERSION=12.16.2
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
