#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.15.1

FROM renovate/buildpack:2-node@sha256:3a30686401eee5d8329bd9da21901050923df6a3328152ee06c0a5cbb064dc59

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-node${FLAVOR}

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
