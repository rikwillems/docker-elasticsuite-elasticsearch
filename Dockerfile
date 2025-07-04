ARG MAJOR_VERSION
ARG MINOR_VERSION
ARG PATCH_VERSION

FROM docker.elastic.co/elasticsearch/elasticsearch:${MAJOR_VERSION:-''}.${MINOR_VERSION:-''}.${PATCH_VERSION:-''}

RUN ./bin/elasticsearch-plugin install --batch analysis-icu
RUN ./bin/elasticsearch-plugin install --batch analysis-phonetic
