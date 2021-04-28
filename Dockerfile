FROM registry.access.redhat.com/ubi8/ubi-minimal:8.3

LABEL name="HLF Operator" \
      vendor="Kung Fu Software <dviejo@kungfusoftware.es>" \
      maintainer="Kung Fu Software <dviejo@kungfusoftware.es>" \
      version="v1.1.0" \
      release="v1.1.0"

RUN \
    microdnf update --nodocs && \
    microdnf install curl ca-certificates shadow-utils --nodocs

COPY CREDITS /licenses/CREDITS
COPY LICENSE /licenses/LICENSE
COPY LICENSE /licenses/LICENSE
COPY charts /charts

COPY hlf-operator /hlf-operator

CMD ["/hlf-operator"]