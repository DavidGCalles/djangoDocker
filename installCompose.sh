#Este script automatiza la instalacion de docker y compose en linux.
#Es utilizado para desplegar sistemas rapidamente en instancias GCP
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
docker compose version