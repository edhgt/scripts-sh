#!/bin/bash

if [ "$1" == "start" ]; then
	echo "Iniciando servicios"
else
	echo "Deteniendo servicios"
fi

echo "Entorno php"
docker compose -f ~/development/docker/php-docker-stack/docker-compose.yml $1

echo "Agregando hosts virtuales al estilo laragon"
sudo ~/bin/setup-projects-to-etc.sh

