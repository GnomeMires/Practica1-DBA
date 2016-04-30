#!/bin/bash
FECHA=$(date +%d-%m-%Y_%H:%M:%S)
pg_dump -i -h localhost -p 5432 -U postgres -F c -b -v -f "/home/fabricio/Escritorio/musicdb_test$FECHA.backup" musicdb_test
chmod 755 /home/fabricio/Escritorio/musicdb_test$FECHA.backup
pg_dump -i -h localhost -p 5432 -U postgres -F p -b -v -f "/home/fabricio/Escritorio/musicdb_test$FECHA.sql" musicdb_test
chmod 755 /home/fabricio/Escritorio/musicdb_test$FECHA.sql
