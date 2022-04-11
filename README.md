#README

##USO
```
docker-compose up -d --build
```
Esto creará (al momento de la escritura de este commit) un stack de compose con 3 servicios:
- DB: Mariadb.
  - Esta imagen se construye desde mariadb, sin configuracion excepto DATABASE, USER y PASSWORD
  - Volumenes:
    - sqlDump: El dump que crea la estructura inicial
	- sqlData: El volumen que almancena la base de datos en si, para motivos de persistencia.
- Visualizacion: Adminer.
  - Se usa principalmente para generar los dumps y comprobar ciertas escrituras a db.
- APP: Apache/Django
  - Este contenedor es el frankestein de la coleccion.
  - Se carga un servidor apache y se instalan todas las dependencias de python necesarias.
  - La aplicacion se monta como volumen en /var/www/html

##CUIDADO
Este repositorio tiene un propósito muy concreto a nivel personal. No debería usarse en entornos de producción, si no más bien como una demo rápida para el despliegue en cualquier lugar(yo la utilizo en GCP) o aplicaciones muy, muy poco exigentes.


