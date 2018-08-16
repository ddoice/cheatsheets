# Base image
FROM sebp/elk

# Enable CORS
# Don't do it on production, only for testing purposes
RUN echo "http.cors.enabled: true" >>/etc/elasticsearch/elasticsearch.yml
RUN echo "http.cors.allow-origin: \"*\"" >>/etc/elasticsearch/elasticsearch.yml
RUN echo "http.cors.allow-methods: OPTIONS, HEAD, GET, POST, PUT, DELETE" >>/etc/elasticsearch/elasticsearch.yml
RUN echo "http.cors.allow-headers: \"X-Requested-With,X-Auth-Token,Content-Type, Content-Length, Authorization\"" >>/etc/elasticsearch/elasticsearch.yml

# Copy create index script
COPY createIndex.sh /usr/local/bin/elk-post-hooks.sh

VOLUME "/var/lib/elasticsearch"
VOLUME "/var/log/elasticsearch"