#!/bin/bash
gosu postgres pg_ctl -w start

gosu postgres psql -h localhost -p 5432 -U postgres -a -f createdb.sql
gosu postgres psql -h localhost -p 5432 -U postgres -d guacamole_db -a -f initdb.sql

gosu postgres pg_ctl stop
