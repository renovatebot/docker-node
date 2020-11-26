#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.15.1

FROM renovate/buildpack:2-node@sha256:446ddf33fd421226d63d5223d0e7acb7fd7786798eb69f2053e9ed2d0b09c1ba

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-node${FLAVOR}

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
