#!/bin/bash
gosu postgres pg_ctl -w start

cat "create database guacamole_db" | psql -a -f -
gosu postgres psql -h localhost -p 5432 -U postgres -d guacamole_db -a -f initdb.sql

gosu postgres pg_ctl stop
