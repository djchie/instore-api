#/bin/bash

cd ${0%/*}

CONTAINER_STRING="koa-server"
REPO_NAME="instore"
docker ps | grep "$CONTAINER_STRING" | grep "$REPO_NAME" | awk '{print $1}'
