#Avery Hall

import csv


# (1) athlete_id -> athlete_name
#     Results in athletes.csv
athletes = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
athletes_file = open('athletes.csv', 'w+')
writer = csv.writer(athletes_file)
heading_row = next(reader) # eat up and ignore the heading row of the data file
for row in reader:
    athlete_id = row[0]
    athlete_name = row[1]
    athlete_sex = row[2]
    if athlete_id not in athletes:
        athletes[athlete_id] = athlete_name
        writer.writerow([athlete_id, athlete_name, athlete_sex])
original_data_file.close()
athletes_file.close()

# (2)  event_name -> event_id
#      Results in events.csv
events = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
events_file = open('events.csv', 'w+')
writer = csv.writer(events_file)
heading_row = next(reader)
for row in reader:
    event_name = row[13]
    if event_name not in events:
        event_id = len(events) + 1
        events[event_name] = event_id
        writer.writerow([event_id, event_name])
events_file.close()

# (3)  games_name -> event_id
#      Results in games.csv
games = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
games_file = open('games.csv', 'w+')
writer = csv.writer(games_file)
heading_row = next(reader)
for row in reader:
    games_name = row[8]
    games_year = row[9]
    games_season = row[10]
    games_city = row[11]
    if games_name not in games:
        games_id = len(games) + 1
        games[games_name] = games_id
        writer.writerow([games_id, games_year, games_season, games_city])
games_file.close()


# (4) sport_name -> sport_id
#      Results in sports.csv
sports = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
sports_file = open('sports.csv', 'w+')
writer = csv.writer(sports_file)
heading_row = next(reader)
for row in reader:
    sport_name = row[12]
    if sport_name not in sports:
        sport_id = len(sports) + 1
        sports[sport_name] = sport_id
        writer.writerow([sport_id, sport_name])
sports_file.close()


# (5) country_name -> country_id
#      Results in countries.csv
countries = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
countries_file = open('countries.csv', 'w+')
writer = csv.writer(countries_file)
heading_row = next(reader)
for row in reader:
    country_name = row[6]
    if country_name not in countries:
        country_id = len(countries) + 1
        countries[country_name] = country_id
        writer.writerow([country_id, country_name])
sports_file.close()

# (6) noc_name -> noc_id
#      Results in nocs.csv
nocs = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
nocs_file = open('nocs.csv', 'w+')
writer = csv.writer(nocs_file)
heading_row = next(reader)
for row in reader:
    noc_name = row[7]
    if noc_name not in nocs:
        noc_id = len(nocs) + 1
        nocs[noc_name] = noc_id
        writer.writerow([noc_id, noc_name])
sports_file.close()


# (7) Linking table
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
event_results_file = open('event_results.csv', 'w+')
writer = csv.writer(event_results_file)
heading_row = next(reader)
for row in reader:
    athlete_id = row[0]

    games_name = row[8]
    games_id = games[games_name]

    country_name = row[6]
    country_id = countries[country_name]

    noc_name = row[7]
    noc_id = nocs[noc_name]

    sport_name = row[12]
    sport_id = sports[sport_name]

    event_name = row[13]
    event_id = events[event_name]

    medal = row[14]
    age = row[3]
    if age == "NA":
        age = 'NULL'
    height = row[4]
    if height == "NA":
        height = 'NULL'
    weight = row[5]
    if weight == "NA":
        weight = 'NULL'

    writer.writerow([athlete_id, games_id, country_id, noc_id, sport_id, event_id, medal, age, height, weight])
event_results_file.close()



'''
def main():


if __name__ == '__main__':
    main()

'''
