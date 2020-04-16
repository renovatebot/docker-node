FROM renovate/buildpack@sha256:f578b330f5f5c65d63de1d09d2e22f4a8cdaff18e91fe76e8fe89c4ed70f0a32

# renovate: datasource=github-tags depName=nodejs/node versioning=node
ARG DUMMY=12.16.2

ARG NODE_VERSION=12

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


RUN /usr/local/build/node.sh

