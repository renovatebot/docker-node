FROM renovate/buildpack@sha256:1b937dcd416efb84b7be53b050d883bcfdf2f925ab81fd38211f0d75cb235186

# renovate: datasource=github-tags depName=nodejs/node versioning=node
ARG DUMMY=12.16.2

ARG NODE_VERSION=12

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


RUN /usr/local/build/node.sh

