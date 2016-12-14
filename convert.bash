#! /bin/bash

## Get the geodatabase
rm -f *.gdb.zip
wget --quiet http://www2.census.gov/geo/tiger/TIGER_DP/2014ACS/ACS_2014_5YR_BG_41.gdb.zip

## Convert to PostGIS
createdb acs_oregon
psql -d acs_oregon -c "CREATE EXTENSION postgis;"
ogr2ogr -f PostgreSQL -overwrite -skipfailures \
  PG:dbname=acs_oregon ACS_2014_5YR_BG_41.gdb.zip
