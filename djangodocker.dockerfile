FROM debian:bullseye

RUN apt-get update && apt-get upgrade
RUN apt-get install -y python3
RUN apt-get install -y python3-pip apache2 libapache2-mod-wsgi-py3 libmariadb-dev
RUN pip3 install django==4.0.3 mysqlclient
COPY vhost.conf /etc/apache2/sites-available/django.conf
RUN a2ensite django.conf
RUN a2dissite 000-default.conf


