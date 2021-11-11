'''Avery Hall, Anders Shenholm
Based on convert.py for olympics data, adapted for basketball data
Nov 10, 2021
'''

import csv


original_data_file = open('data/seasons_stats.csv')
reader = csv.reader(original_data_file)
athletes_file = open('data/stats.csv', 'w+')
writer = csv.writer(athletes_file)
heading_row = next(reader) _ eat up and ignore the heading row of the data file

for row in reader:
    if (row[0]):   _avoiding some empty rows
        
    '''
    csv indexes in original doc:
    
        1: year 	
        2: player 
        3: pos	
        4: age	
        5: team	
        6: G	
        7: GS	
        8: MP	
        9: PER	
        10: TS%	
        11: USG%	
        12: OWS	
        13: DWS	
        14: WS	
        15: WS/48	
        16: OBPM	
        17: DBPM	
        18: BPM	
        19: VORP	
        20: FG	
        21: FGA	
        22: FG%	
        23: 3P	
        24: 3PA	
        25: 3P%	
        26: 2P	
        27: 2PA	
        28: 2P%	
        29: eFG%	
        30: FT	
        31: FTA	
        32: FT%	
        33: ORB	
        34: DRB	
        35: TRB	
        36: AST	
        37: STL	
        38: BLK	
        39: TOV	
        40: PF
        41: PTS
        
    '''
    '''
    csv indexes in new file doc:
    
CREATE TABLE stats(
        year integer,
        name text,
        position text,
        age	integer,
        team text,
        G integer,	
        GS integer,
        MP float,
        PER	float,
        TS_	float,
        USG_ float,	
        OWS	float,
        DWS	float,
        WS float,	
        WS_per_48 float,
        OBPM float,
        DBPM float,
        BPM float,
        VORP float,
        FG float,
        FGA float,
        FG_ float,
        ThreeP float,
        ThreePA float,
        ThreeP_ float,
        TwoP float,
        TwoPA float,
        TwoP_ float,
        eFG_ float,
        FT float,
        FTA float,
        FT_ float,
        ORB float,
        DRB float,
        TRB float,
        AST float,
        STL float,
        BLK	float,
        TOV	float,
        PF float,
        PTS float
);
    
        1: year 	
        2: player 
        3: pos	
        4: age	
        5: team	
    
        6: G	
        7: GS	
        8: MP
        20: FG	
        21: FGA	
        22: FG%	
        23: 3P	
        24: 3PA	
        25: 3P%	
        26: 2P	
        27: 2PA	
        28: 2P%	
        29: eFG%	
        30: FT	
        31: FTA	
        32: FT%	
        33: ORB	
        34: DRB	
        35: TRB	
        36: AST	
        37: STL	
        38: BLK	
        39: TOV	
        40: PF
        41: PTS
        
        
        
        9: PER	
        10: TS%	
        11: USG%	
        12: OWS	
        13: DWS	
        14: WS	
        15: WS/48	
        16: OBPM	
        17: DBPM	
        18: BPM	
        19: VORP	
        
        
    '''
    
    
    
        writer.writerow([row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8],		
        
    
original_data_file.close()
athletes_file.close()




'''
_ (2)  event_name -> event_id
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
original_data_file.close()
events_file.close()

_ (3)  games_name -> event_id
games = {}
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
games_file = open('games.csv', 'w+')
writer = csv.writer(games_file)
heading_row = next(reader)
unsorted_games = []
for row in reader:
    games_name = row[8]
    games_year = row[9]
    games_season = row[10]
    games_city = row[11]
    if games_name not in unsorted_games:
        unsorted_games.append(games_name)
        games[games_name] = [games_year, games_season, games_city]
sorted_games = sorted(unsorted_games)
id_count = 1
for games_instance in sorted_games:
    games_id = id_count
    games[games_instance] = [games_id] + games[games_instance]
    games_attributes = games[games_instance]
    writer.writerow(games_attributes)
    id_count += 1

original_data_file.close()
games_file.close()


_ (4) sport_name -> sport_id
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
original_data_file.close()
sports_file.close()


_ (5) country_name -> country_id
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
original_data_file.close()
countries_file.close()

_ (6) noc_name -> noc_id
nocs = {}
original_data_file_1 = open('noc_regions.csv')
original_data_file_2 = open('athlete_events.csv')
reader1 = csv.reader(original_data_file_1)
reader2 = csv.reader(original_data_file_2)
nocs_file = open('nocs.csv', 'w+')
writer = csv.writer(nocs_file)

heading_row1 = next(reader1)
for row in reader1:
    noc_abb = row[0]
    full_name = row[1]
    if noc_abb not in nocs:
        noc_id = len(nocs) + 1
        nocs[noc_abb] = noc_id
        writer.writerow([noc_id, noc_abb, full_name])
original_data_file_1.close()

heading_row2 = next(reader2)
for row in reader2:
    noc_abb = row[7]
    full_name = row[6]
    if noc_abb not in nocs:
        noc_id = len(nocs) + 1
        nocs[noc_abb] = noc_id
        writer.writerow([noc_id, noc_abb, full_name])
original_data_file_2.close()

nocs_file.close()


_ (7) Linking table
original_data_file = open('athlete_events.csv')
reader = csv.reader(original_data_file)
event_results_file = open('event_results.csv', 'w+')
writer = csv.writer(event_results_file)
heading_row = next(reader)
for row in reader:
    athlete_id = row[0]

    games_name = row[8]
    games_id = games[games_name][0]

    country_name = row[6]
    country_id = countries[country_name]

    noc_abb = row[7]
    noc_id = nocs[noc_abb]

    sport_name = row[12]
    sport_id = sports[sport_name]

    event_name = row[13]
    event_id = events[event_name]

    medal = row[14]
    age = row[3]
    if age == "NA": _converting NA to NULL for ints
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