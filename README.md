# tiger-geodatabase-oregon
Census Bureau TIGER Geodatabase for Oregon

Source: [TIGER/Line® with Selected Demographic and Economic Data](https://www.census.gov/geo/maps-data/data/tiger-data.html)

I did this on Ubuntu 16.04, but if someone wants to do it on Windows I can dig up the instructions.

1. Install PostGIS and GDAL.
2. Connect to PostgreSQL with PgAdmin3. Create a database "acs_oregon". Then add the PostGIS extension to that database.
3. Download the Oregon database from <https://www.census.gov/geo/maps-data/data/tiger-data.html>. I did the finest granularity available, block group. It's a 24 MB ZIP archive called `ACS_2014_5YR_BG_41.gdb.zip`.
4. Open a command line where you downloaded the database and type `ogr2ogr -f PostgreSQL -overwrite PG:dbname=acs_oregon ACS_2014_5YR_BG_41.gdb.zip`. This will take a while. 
5. Unfortunately PostgreSQL has a hard upper limit of 1600 columns in a table. One of the tables in the database has this problem and you'll see some errors. It's the table `x25_housing_characteristics`, which is probably of some interest for Hack Oregon projects. I'm looking for a workaround. I'm pretty sure one can read the table into Python or R, possibly with an intermediate GDAL/ogr2ogr conversion to shapefiles.
6. Dump the database to SQL with `pg_dump -f ACS_2014_5YR_BG_41.sql -d acs_oregon`. This produces the 111 MB file `ACS_2014_5YR_BG_41.sql`. 

Decoder ring is <BG_METADATA_2014.txt>.

To be continued ...
