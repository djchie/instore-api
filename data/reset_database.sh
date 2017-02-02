#/bin/bash

cd ${0%/*}

# For some reason, `PGPASSWORD=password psql -h postgresql -p 5432 -U user local` is needed to be piped in to avoid the following errors:

# ERROR:  multiple primary keys for table "inventory" are not allowed
# ERROR:  multiple primary keys for table "product" are not allowed
# ERROR:  multiple primary keys for table "store" are not allowed
# ERROR:  multiple primary keys for table "users" are not allowed
# ERROR:  relation "users_username_key" already exists
# ERROR:  constraint "inventory_product_id_fkey" for relation "inventory" already exists
# ERROR:  constraint "inventory_store_id_fkey" for relation "inventory" already exists

echo "Dropping all tables"
PGPASSWORD=password psql -h postgresql -p 5432 -U user local -t -c "SELECT 'DROP TABLE \"' || tablename || '\" CASCADE;' FROM pg_tables WHERE schemaname='public'" | PGPASSWORD=password psql -h postgresql -p 5432 -U user local
echo "All tables dropped"
./load_data.sh
