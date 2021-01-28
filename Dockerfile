#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.15.4

FROM renovate/buildpack:2-node@sha256:25254e8bb0245e3dced5b05623b233fe7c875462d46e7d3e827aa06103d148fb

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-node${FLAVOR}

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
