#/bin/bash

cd ${0%/*}

container_id=$(../docker/get_container_id.sh)

if [[ -z "$container_id" ]]
then
    echo "Could not find container id"
    exit 1
fi

docker exec -it $container_id /bin/bash ./data/freeze_data.sh
