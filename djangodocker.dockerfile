FROM debian:bullseye

RUN apt-get update && apt-get upgrade
RUN apt-get install -y python3
RUN apt-get install -y python3-pip apache2 libapache2-mod-wsgi-py3
RUN pip3 install django==4.0.3
COPY vhost.conf /etc/apache2/sites-available/django.conf
WORKDIR /var/www/html
RUN django-admin startproject test_django
COPY settings.py /var/www/html/test_django/test_django/settings.py
COPY wsgi.py /var/www/html/test_django/test_django/wsgi.py
RUN a2ensite django.conf
RUN a2dissite 000-default.conf