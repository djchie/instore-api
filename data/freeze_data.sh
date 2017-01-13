#/bin/bash

cd ${0%/*}

echo "Freezing data from the database"
PGPASSWORD=password pg_dump -U user -h postgresql -w local > data.sql
echo "Data frozen from the database"
