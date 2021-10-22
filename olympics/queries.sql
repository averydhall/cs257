
/*  List all the NOCs (National Olympic Committees), in alphabetical order by abbreviation. These entities, by the way, are
  mostly equivalent to countries. But in some cases, you might find that a portion of a country participated in a particular
  games (e.g. one guy from Newfoundland in 1904) or some other oddball situation. */

SELECT nocs.noc
FROM nocs
ORDER BY nocs.noc;


-- List the names of all the athletes from Kenya. If your database design allows it, sort the athletes by last name.

SELECT DISTINCT athletes.name
FROM athletes, countries, event_results
WHERE athletes.id = event_results.athlete_id
AND countries.id = event_results.country_id
AND countries.country = 'Kenya'
ORDER BY athletes.name; --Cannot sort by last name but still opted to use alph. sort


-- List all the medals won by Greg Louganis, sorted by year. Include whatever fields in this output that you think appropriate.

SELECT games.year, games.season, games.city, events.event, event_results.medal
FROM athletes, games, events, event_results
WHERE athletes.id = event_results.athlete_id
AND games.id = event_results.games_id
AND events.id = event_results.event_id
--AND athletes.id = event_results.athlete_id
AND athletes.name = 'Gregory Efthimios "Greg" Louganis'
AND NOT event_results.medal = 'NA'
ORDER BY games.year;


-- List all the NOCs and the number of gold medals they have won, in decreasing order of the number of gold medals.

SELECT nocs.noc, COUNT(*) AS number_of_golds
FROM nocs, event_results
WHERE nocs.id = event_results.noc_id
AND event_results.medal = 'Gold'
GROUP BY nocs.noc
ORDER BY number_of_golds DESC;
