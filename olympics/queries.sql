
/*  List all the NOCs (National Olympic Committees), in alphabetical order by abbreviation. These entities, by the way, are
  mostly equivalent to countries. But in some cases, you might find that a portion of a country participated in a particular
  games (e.g. one guy from Newfoundland in 1904) or some other oddball situation. */

SELECT DISTINCT countries.NOC --Do I want to use DISTINCT here?
FROM countries
ORDER BY countries.NOC;

-- List the names of all the athletes from Kenya. If your database design allows it, sort the athletes by last name.

SELECT athletes.name
FROM athletes, countries, event_results
WHERE athletes.id = event_results.athlete_id
AND countries.id = event_results.country_id
AND countries.country = "Kenya";
--ORDER BY statement?

-- List all the medals won by Greg Louganis, sorted by year. Include whatever fields in this output that you think appropriate.

SELECT games.year, games.season, games.city, events.event, event_results.medals
FROM athletes, games, events, event_results
WHERE athletes.id = event_results.athlete_id
AND games.id = event_results.games_id
AND events.id = event_results.event_id
AND athletes.name = "Greg Louganis"
ORDER BY games.year;

-- List all the NOCs and the number of gold medals they have won, in decreasing order of the number of gold medals.

SELECT countries.NOC, event_results.medal, COUNT(*) AS number_of_golds --Should I use DISTINCT on countries.NOC?
FROM countries, event_results
WHERE countries.id = event_results.country_id
AND event_results.medal = "Gold"
GROUP BY countries.NOC;
-- ORDER BY decreasing num of golds
