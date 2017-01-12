#/bin/bash

cd ${0%/*}

PGPASSWORD=password dropdb -U user -h postgresql local
PGPASSWORD=password createdb -U user -h postgresql local
./load_data.sh
