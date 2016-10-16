#/bin/bash

cd ${0%/*}

container_id=$(../get_container_id.sh)

docker kill $container_id