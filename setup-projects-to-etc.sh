#!/bin/sh

# Crear configuración para cada proyecto
for PROJECT in /home/edhernandez/development/php/*; do
  if [ -d "$PROJECT" ]; then
    PROJECT_NAME=$(basename "$PROJECT")
    HOST_ENTRY="127.0.0.1 ${PROJECT_NAME}.test"
    if ! grep -q "$HOST_ENTRY" /etc/hosts; then
      sudo -u root echo "$HOST_ENTRY" >> /etc/hosts
      echo "Se agregó $PROJECT_NAME en /etc/hosts"
    else
      echo "$PROJECT_NAME ya existe en /etc/hosts"
    fi
  fi
done

