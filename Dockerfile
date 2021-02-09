#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.15.4

FROM renovate/buildpack:3-node@sha256:166a73d5abf8c0ab4f146e053d5fab34d9ee93226b942844c40689f0cad1e1b9

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-node${FLAVOR}

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"


USER 1000
