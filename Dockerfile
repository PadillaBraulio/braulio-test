FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y nginx

RUN chgrp -R 0 /var/log/nginx && \
    chmod -R g=u /var/log/nginx
CMD nginx -g 'daemon off;'
USER 10001
