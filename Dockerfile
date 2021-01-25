#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.15.4

FROM renovate/buildpack:2-node@sha256:d98dd76761f1b1349988964594277539a5a73f1000f306546900d36b7e0ab4b0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-node${FLAVOR}

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
