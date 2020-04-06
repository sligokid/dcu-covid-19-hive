use covid19;

SELECT l.`date`, l.countries, l.pop, l.cases, l.deaths, 100 * deaths/cases AS death_rate FROM latest_stats l LIMIT 100;
