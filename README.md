# tiger-geodatabase-oregon
Census Bureau TIGER Geodatabase for Oregon

Source: [TIGER/Line® with Selected Demographic and Economic Data](https://www.census.gov/geo/maps-data/data/tiger-data.html)

I did this on Fedora 25, but it should work just fine in the Hack Oregon virtual machine / Vagrant box, which is based on Ubuntu 16.04.1 LTS.

1. Install PostGIS and [GDAL](http://www.gdal.org/). They are already installed in the Hack Oregon virtual machine / Vagrant box.
2. Open a command line terminal and type `./convert.bash`. This will take a while. You can ignore the errors.

Notes on the data:

1. This is five-year ACS data for 2010 - 2014, *not* the most recent data for 2011 - 2015!
2. Unfortunately PostgreSQL has a hard upper limit of 1600 columns in a table. One of the tables in the database has this problem and you'll see some errors. It's the table `x25_housing_characteristics`, which is probably of some interest for Hack Oregon projects.
3. The data decoder ring is [BG_METADATA_2014.txt](https://github.com/hackoregon/tiger-geodatabase-oregon/blob/master/BG_METADATA_2014.txt). Note that "X25 housing characteristics" croaks on the 1600-column issue and isn't there at present.
