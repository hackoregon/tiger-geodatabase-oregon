# tiger-geodatabase-oregon
Census Bureau TIGER Geodatabase for Oregon

1. Install QGIS and PostGIS.
2. Create a PostgreSQL user with database creation capability and a personal database with the same name. The user will need to have an encrypted password. For example, on my workstation the user name is 'znmeb' and the personal database is also 'znmeb'.
3. Go into PgAdmin3 and add the PostGIS extension to that user's database.
4. Download the Oregon database from <https://www.census.gov/geo/maps-data/data/tiger-geodatabases.html>
5. Open QGIS. Go to the "Browser" panel and right-click on "PostGIS". Select "New Connection". In the form you'll need to fill in the name, the database name ("znmeb" in my case), the user name ("znmeb" again) and the password. This won't work with a passwordless login.

    Press "Test Connection". It should come back with "Connection to <database name> was successful". Press the 'OK' button to dismiss the test dialog and 'OK' again to set up the connection.
