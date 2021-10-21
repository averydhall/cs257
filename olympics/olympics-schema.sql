/*
ID, Name, Sex, Age, Height, Weight, Team, NOC, Games, Year, Season, City, Sport, Event, Medal

Tables:
1. Athletes (ID, Name, Sex)
2. Attributes (ID, Age, Height, Weight)
3. Games (ID, Year, Season, City)
4. Countries (ID, Country, NOC)
5. Events (ID, Event, Sport)
*/

CREATE TABLE athletes (
    id SERIAL,
    name text,
    sex text,
);

CREATE TABLE games (
    id SERIAL,
    year integer,
    season text,
    city integer,
);

CREATE TABLE countries (
    id SERIAL,
    country text,
    NOC text,
);

CREATE TABLE sports (
    id SERIAL,
    sport text,
);

CREATE TABLE events (
    id SERIAL,
    event text,
);


--Linking Table

CREATE TABLE event_results (
    athlete_id integer,
    games_id integer,
    country_id integer,
    sport_id integer,
    event_id integer,

    medal text,
    age integer,
    height integer,
    weight integer,
);
