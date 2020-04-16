FROM renovate/base@sha256:d694b03ba0df63ac9b27445e76657d4ed62898d721b997372aab150ee84e07a1

# renovate: datasource=github-tags depName=nodejs/node versioning=node
ARG DUMMY=12.16.2

ARG NODE_VERSION=12

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


RUN /usr/local/build/node.sh

