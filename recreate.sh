#!/bin/sh

# OroCommerce script
# This script recreates DB, create DB extension and reset installed flag
#
# You need to be in application directory of OroCommerce
#
# Usage: ./recreate.sh bap

DB=${1}


echo "[-] Removing cache"
rm -rf app/cache/*
rm -rf var/cache/*
echo "[\] Cache removed"

dropdb ${DB}
echo "[/] [${DB}] dropped"

createdb ${DB}
echo "[-] [${DB}] created"

psql -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";' -d ${DB} > /dev/null
echo "[\] [${DB}] extension uuid-ossp created"

sed -i '' "s/installed"\:".*/installed"\:" null/g" app/config/parameters.yml
sed -i '' "s/installed"\:".*/installed"\:" null/g" config/parameters.yml
echo "[/] Flag \"installed\" flushed"
echo "[+] Done"
