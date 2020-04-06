use covid19;

SELECT l.`date`, l.countries, l.geoid, l.pop, l.cases, l.deaths, g.lat, g.lng AS death_rate 
FROM latest_stats l LEFT JOIN geo_city g
ON l.geoid = g.iso2 AND g.capital = 'primary';
