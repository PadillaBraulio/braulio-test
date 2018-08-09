FROM ubuntu:16.04

RUN apt-get update && \ 
  apt-get install -y nginx
  
CMD nginx -g 'daemon off;'
