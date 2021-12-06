# renovate: datasource=node depName=node
ARG NODE_VERSION=v14.18.2

FROM renovate/buildpack:5@sha256:bfbfdb0f815338f4c5f82e8fc076add6440309df67c6efa92222941b2defebac

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
