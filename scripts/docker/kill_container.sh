#/bin/bash

cd ${0%/*}

container_id=$(./get_container_id.sh)

if [[ -z "$container_id" ]]
then
    echo "Could not find container id"
    exit 1
fi

docker kill $container_id
