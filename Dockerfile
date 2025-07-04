ARG ELASTICSEARCH_VERSION

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTICSEARCH_VERSION:-latest}

RUN ./bin/elasticsearch-plugin install --batch analysis-icu
RUN ./bin/elasticsearch-plugin install --batch analysis-phonetic
