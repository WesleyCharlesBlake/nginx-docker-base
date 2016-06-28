FROM wesleycharlesblake/alpine-linux

maintainer Wesley Blake <wesley@stratotechnology.com>


RUN apk add --update \
    nginx \
    && rm -rf /var/cache/apk/*

# setup all the configfiles
ADD root /

chown -R nginx:www-data /var/lib/nginx

EXPOSE 80 443