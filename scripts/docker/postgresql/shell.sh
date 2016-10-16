#/bin/bash

cd ${0%/*}

container_id=$(../get_container_id.sh)

docker exec -it $container_id /bin/bash -c 'PGPASSWORD=password psql -U user -h postgresql -w local'
