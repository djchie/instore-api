#/bin/bash

# This file is used to run this individual container
# Better to run docker-compose up

cd ${0%/*}

# This is the port we'll be using to access
LOCAL_PORT="8080"

# The port part redirects a local public port to a private port exposed by the
# container
docker run -p $LOCAL_PORT:8080 instore/koa-server

echo "Listening on localhost:$LOCAL_PORT"