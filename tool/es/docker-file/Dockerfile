FROM elasticsearch:7.17.7
ADD ./elasticsearch-plugins/* /tmp/elasticsearch-plugins/
RUN ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-plugins/elasticsearch-analysis-ik-7.17.7.zip \
    && ./bin/elasticsearch-plugin install -b file:///tmp/elasticsearch-plugins/elasticsearch-analysis-pinyin-7.17.7.zip \
    && rm -rf /tmp/elasticsearch-plugins/*