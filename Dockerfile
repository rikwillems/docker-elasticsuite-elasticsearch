ARG MAJOR_VERSION
ARG MINOR_VERSION
ARG PATCH_VERSION

FROM docker.elastic.co/elasticsearch/elasticsearch:${MAJOR_VERSION:-0}.${MINOR_VERSION:-0}.${PATCH_VERSION:-0}

RUN ./bin/elasticsearch-plugin install --batch analysis-icu analysis-phonetic
