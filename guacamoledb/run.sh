#!/bin/bash
gosu postgres pg_ctl -w start

gosu postgres psql -h localhost -p 5432 -U postgres -a -f /docker-entrypoint-initdb.d/createdb.sql
gosu postgres psql -h localhost -p 5432 -U postgres -d guacamole_db -a -f /docker-entrypoint-initdb.d/initdb.sql

gosu postgres pg_ctl stop
