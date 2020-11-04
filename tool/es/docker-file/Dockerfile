FROM docker.elastic.co/elasticsearch/elasticsearch:7.1.1
ADD ./elasticsearch-plugins/* /tmp/
RUN ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-analysis-ik-7.1.1.zip \
    && rm -rf /tmp/elasticsearch-analysis-ik-7.1.1.zip \
    && ./bin/elasticsearch-plugin install -b file:///tmp/analysis-icu-7.1.1.zip \
    && rm -rf /tmp/analysis-icu-7.1.1.zip