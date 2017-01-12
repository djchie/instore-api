#/bin/bash

cd ${0%/*}

PGPASSWORD=password pg_dump -U user -h postgresql -w local > data.sql
