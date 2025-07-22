#!/bin/bash

if [ "$1" == "start" ]; then
	echo "Iniciando servicios"
	echo "docker.service"
	sudo systemctl $1 docker.service

else
	echo "Deteniendo servicios"
	echo "docker.service"
	sudo systemctl $1 docker.service
	echo "docker.socket"
	sudo systemctl $1 docker.socket
	echo "containerd.service"
	sudo systemctl $1 containerd.service

fi
