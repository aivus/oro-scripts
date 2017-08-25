FROM elasticsearch:2.4.4

RUN /usr/share/elasticsearch/bin/plugin install https://raw.githubusercontent.com/elasticfence/elasticsearch-http-user-auth/2.4.4/jar/elasticfence-2.4.4-SNAPSHOT.zip
RUN /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ/v2.0.3
RUN /usr/share/elasticsearch/bin/plugin install delete-by-query

COPY elasticsearch.yml /usr/share/elasticsearch/config
