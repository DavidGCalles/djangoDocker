#Comando utilizado para crear un superuser basico de manera no interactiva.
cd test_django/
echo "from django.contrib.auth.models import User; User.objects.create_superuser('root', 'root@localhost', 'toor')" | python3 manage.py shell