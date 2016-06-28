FROM wesleycharlesblake/alpine-linux

maintainer Wesley Blake <wesley@stratotechnology.com>


RUN apk add --update \
    nginx &&\
    rm -rf /var/cache/apk/* &&\
    chown -R nginx:nginx /var/lib/nginx

# setup all the configfiles
ADD root /


EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
