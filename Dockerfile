FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y nginx

RUN chgrp -R 0 /var/log/nginx && \
    chmod -R g=u /var/log/nginx

RUN chgrp -R 0 /etc/nginx && \
    chmod -R g=u /etc/nginx

COPY ./conf /etc/nginx/nginx.conf
CMD nginx -g 'daemon off;'
USER 1001
