# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.1

FROM renovate/buildpack:5-node@sha256:8522c8f58c0eed9016d42ce10b9dfbc2fc780f93ef662dede0b68ed489e519aa

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
