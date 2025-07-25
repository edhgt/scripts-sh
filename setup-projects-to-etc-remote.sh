#!/bin/sh

IP="128.5.101.69"

for PROJECT in $(ssh edh "find ~/development/php/* -maxdepth 0 -type d"); do
    PROJECT_NAME=$(basename "$PROJECT")
    HOST_ENTRY="${IP} ${PROJECT_NAME}.test"

    if ! grep -q "$HOST_ENTRY" /etc/hosts; then
        echo "$HOST_ENTRY" | sudo tee -a /etc/hosts > /dev/null
        echo "Se agregó $PROJECT_NAME.test a /etc/hosts"
    else
        echo "$PROJECT_NAME.test ya existe en /etc/hosts"
    fi
done

