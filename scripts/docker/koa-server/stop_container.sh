#/bin/bash

cd ${0%/*}

container_id=$(../get_container_id.sh)

docker stop $container_id