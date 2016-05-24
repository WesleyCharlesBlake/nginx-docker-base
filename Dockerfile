FROM wesleycharlesblake/alpine-linux
FROM python:2.7

maintainer Wesley Blake <wesley@stratotechnology.com>

#install base dependancies

RUN apt-get update
RUN apt-get install -y build-essential git
RUN apt-get install -y python \ 
                       python-dev \
                       python-setuptools

RUN apt-get install -y nginx \
                       supervisor
RUN easy_install pip

# install uwsgi now because it takes a little while
RUN pip install uwsgi

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default