#README

##CLI
One command stack:
```
docker-compose up -d --build
```

##BASH
```
apt-get update && apt-get upgrade
apt-get install apache2 libapache2-mod-wsgi-py3
pip3 install django==4.0.3
cd /var/www/html
git clone 
cp vhost.conf /etc/apache2/sites-available/django.conf
a2ensite /etc/apache2/sites-available/django.conf
a2dissite /etc/apache2/sites-available/000-default.conf
systemctl reload apache
```

