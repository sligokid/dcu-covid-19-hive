use covid19;

EXPLAIN SELECT l.`date`, l.countries, l.geoid, l.pop, l.cases, l.deaths, 100 * deaths/cases, g.lat, g.lng AS death_rate FROM latest_stats l, geo_city g
WHERE l.geoid = b.iso2 AND g.capital = 'primary' GROUP BY b.iso2;
