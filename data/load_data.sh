#/bin/bash

cd ${0%/*}

PGPASSWORD=password psql -U user -h postgresql -w local < data.sql
