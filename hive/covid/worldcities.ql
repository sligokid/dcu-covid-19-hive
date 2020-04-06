use covid19;
DROP TABLE IF EXISTS geo_city;
CREATE TABLE geo_city
(city STRING, city_ascii STRING, lat STRING, lng STRING, country STRING, iso2 STRING, iso3 STRING, name STRING, capital STRING, pop INT, id INT)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
LOCATION '/home/kieran_mcgowan9/hive/covid/worrldcities.csv';
SET hive.strict.checks.bucketing=false;
LOAD DATA LOCAL INPATH 'worldcities.csv' INTO TABLE geo_city;

SELECT *
        FROM geo_city LIMIT 10;
