USE covid19;
DROP TABLE IF EXISTS latest_stats;
CREATE TABLE latest_stats
(`date` STRING, day INT, month INT, year INT, cases INT, deaths INT, countries STRING ,geoId STRING ,cc STRING, pop INT)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
LOCATION '/home/kieran_mcgowan9/hive/covid/covid-19.csv';
SET hive.strict.checks.bucketing=false;
LOAD DATA LOCAL INPATH 'covid-19.csv' INTO TABLE latest_stats;

SELECT `date`, cases, deaths, countries, pop, 100 * deaths/cases AS death_rate
        FROM latest_stats WHERE cc = 'IRL';
