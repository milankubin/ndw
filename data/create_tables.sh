#!/bin/bash

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

mkdir nwb
mkdir ndw
mkdir tmp

#################################################################################
# Download data
#################################################################################

# Nationaal Wegenbestand ########################################################

wget http://geodata.nationaalgeoregister.nl/nwbwegen/extract/nwbwegen.zip -P tmp
unzip tmp/nwbwegen.zip -d tmp/
mv tmp/nwb-wegen/geogegevens/shapefile/nederland_totaal/* nwb/

# VILD ###########################################################################

# VILD files are in git repo and not downloaded by this script from NDW site:
# NDW uses download system with session ids...

# Create vild.sql with absolute path to vild.csv
ruby vild_sql.rb > tmp/vild.sql

# NDW meetlocaties ##############################################################

wget ftp://83.247.110.3/measurement.gz -P tmp

# Create GeoJSON from NDW DATEX II XML
ruby mst2geojson.rb > ndw/mst.geojson

#################################################################################
# Create PostgreSQL tables, import data, create indexes
#################################################################################
echo "Importing, please have some patience..."
# Meetlocaties
psql -h localhost -U postgres -d ndw -f mst.sql > /dev/null
ruby import_mst_geojson.rb ndw/mst.geojson

# Wegvakken
shp2pgsql -s 28992:4326  -I -c -W UTF-8 nwb/Wegvakken.shp wegvakken > tmp/wegvakken.sql
psql -h localhost -U postgres -d ndw -f tmp/wegvakken.sql > /dev/null

# Hectopunten
shp2pgsql -s 28992:4326  -I -c -W UTF-8 nwb/Hectopunten.shp hectopunten > tmp/hectopunten.sql
psql -h localhost -U postgres -d ndw -f tmp/hectopunten.sql > /dev/null

# VILD TMC-punten
shp2pgsql -s 28992:4326  -I -c -W UTF-8 ../data/vild/tmcpoint.shp tmcpoints > tmp/tmcpoint.sql
psql -h localhost -U postgres -d ndw -f tmp/tmcpoint.sql > /dev/null

# VILD table
psql -h localhost -U postgres -d ndw -f tmp/vild.sql > /dev/null

# Indexes
psql -h localhost -U postgres -d ndw -f indexes.sql > /dev/null

echo "Import complete, thank you!"
#################################################################################
# Remove temporary files
#################################################################################

rm -r tmp
