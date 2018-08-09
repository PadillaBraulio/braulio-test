FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y nginx

RUN chgrp -R 0 /var/log/nginx && \
    chmod -R g=u /var/log/nginx

RUN chgrp -R 0 /etc/nginx && \
    chmod -R g=u /etc/nginx

RUN chgrp -R 0 /var/lib/nginx && \
    chmod -R g=u /var/lib/nginx

RUN chgrp -R 0 /run && \
    chmod -R g=u /run

COPY ./conf /etc/nginx/nginx.conf
COPY ./sites /etc/nginx/sites-available/default

EXPOSE 8080
CMD nginx -g 'daemon off;'
