#/bin/bash

cd ${0%/*}

LOCAL_PORT="5000"

docker run -p $LOCAL_PORT:8080 -d instore/koa-server

echo "Listening on localhost:$LOCAL_PORT"