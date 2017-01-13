#/bin/bash

cd ${0%/*}

echo "Deleting the database"
PGPASSWORD=password dropdb -U user -h postgresql local
PGPASSWORD=password createdb -U user -h postgresql local
echo "Database deleted"
./load_data.sh
