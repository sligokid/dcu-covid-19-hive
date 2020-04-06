DATE=`date -d '-1 day' +%F`
#NOTE: Strip quotesfrom csv
#wget https://simplemaps.com/static/data/world-cities/basic/simplemaps_worldcities_basicv1.6.zip 
#unzip simplemaps_worldcities_basicv1.6.zip 

#hive -f create-db.ql
wget https://opendata.ecdc.europa.eu/covid19/casedistribution/csv
mv covid-19.csv covid-19-${DATE}.csv
mv covid-latest-report.csv covid-latest-report-${DATE}.csv
mv csv covid-19.csv 
hive -f covid-19.ql
hive -f worldcities.ql
hive -f worldcities-summary.ql
hive -f query.ql > covid-latest-report.csv
