FROM elasticsearch:7.1.1
ADD ./elasticsearch-plugins/* /tmp/elasticsearch-plugins/
RUN ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-plugins/elasticsearch-analysis-ik-7.1.1.zip \
    && ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-plugins/analysis-icu-7.1.1.zip \
    && ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-plugins/elasticsearch-analysis-pinyin-7.1.1.zip \
    && rm -rf /tmp/elasticsearch-plugins