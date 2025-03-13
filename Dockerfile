ARG VERSION=22.04
FROM ubuntu:${VERSION}
RUN apt update -y && apt install nginx -y && /etc/init.d/nginx start
COPY portopolio /var/www/html

CMD ["nginx", "-g", "daemon off;"]

