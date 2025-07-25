#!/bin/bash

# ---------------------------------------------------
# Script: edocker.sh
# ---------------------------------------------------
# Descripción:
#   Ejecuta un comando interactivo dentro de un contenedor Docker en ejecución.
#
# Uso:
#   ./edocker.sh <nombre_contenedor> <comando> o
#
# Parámetros:
#   $1 - Nombre o ID del contenedor Docker donde se ejecutará el comando.
#   $2 - Comando a ejecutar dentro del contenedor.
#
# Ejemplos:
#   ./edocker.sh my_container bash
#   ./edocker.sh my_container "ls -la /app"
#
# Notas:
#   - El contenedor debe estar en ejecución para que el comando funcione.
#   - Si el comando tiene espacios o múltiples argumentos, se debe pasar entre comillas.
# ---------------------------------------------------

docker exec -it $1 $2
