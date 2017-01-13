#/bin/bash

cd ${0%/*}

echo "Loading data into the database"
PGPASSWORD=password psql -U user -h postgresql -w local < data.sql
echo "Data loaded into the database"
