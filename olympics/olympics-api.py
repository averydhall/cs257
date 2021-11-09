'''
olympics-api.py
By Avery Hall
'''

import sys
import argparse
import flask
import json
import psycopg2

#To access olympics database
from config import password
from config import database
from config import user



app = flask.Flask(__name__)

@app.route('/games')
def get_games():
    '''a list of dictionaries for each Olympic games with fields for id, season, year, and city'''
    #Establish database connection
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()
    #Execute query
    try:
        cursor = connection.cursor()
        query = '''SELECT * FROM games
                    ORDER BY games.year, games.season;'''
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
    #Convert output to list of dictionaries
    games = []
    for row in cursor:
        current_game = {}
        games_id = row[0]
        games_year = row[1]
        games_season = row[2]
        games_city = row[3]

        current_game["id"] = games_id
        current_game["year"] = games_year
        current_game["season"] = games_season
        current_game["city"] = games_city

        games.append(current_game)

    return json.dumps(games)
    connection.close()


@app.route('/nocs')
def get_nocs():
   '''a list of dictionaries for each Olympic NOC with fields for id, abbreviation, and full name'''
   #Establish database connection
   try:
       connection = psycopg2.connect(database=database, user=user, password=password)
   except Exception as e:
       print(e)
       exit()
   #Execute query
   try:
       cursor = connection.cursor()
       query = '''SELECT * FROM nocs
                   ORDER BY nocs.noc, nocs.full_name;'''
       cursor.execute(query)
   except Exception as e:
       print(e)
       exit()
   #Convert output to list of dictionaries
   nocs = []
   for row in cursor:
       current_noc = {}
       noc_abb = row[1]
       noc_full = row[2]

       current_noc["abbreviation"] = noc_abb
       current_noc["name"] = noc_full

       nocs.append(current_noc)

   return json.dumps(nocs)
   connection.close()


@app.route('/medalists/games/<games_id>')
def get_medalists(games_id):
    '''a list of dictionaries for each Olympic NOC with fields for id, abbreviation, and full name'''
    #Establish database connection
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()
    #Execute query
    try:
        cursor = connection.cursor()
        search_string = games_id
        query = '''SELECT athletes.id, athletes.name, athletes.sex, sports.sport, events.event, event_results.medal, nocs.noc
                    FROM athletes, sports, events, games, nocs, event_results
                    WHERE athletes.id = event_results.athlete_id
                    AND sports.id = event_results.sport_id
                    AND events.id = event_results.event_id
                    AND nocs.id = event_results.noc_id
                    AND games.id = event_results.games_id
                    AND event_results.games_id = %s
                    AND NOT event_results.medal = 'NA'
                    ORDER BY athletes.name;'''
        cursor.execute(query, (search_string,))
    except Exception as e:
        print(e)
        exit()
    #Convert output to list of dictionaries
    medalists = []
    noc = flask.request.args.get('noc')
    if not noc == None:
        noc_lower = noc.lower()
    else:
        noc_lower = None
    for row in cursor:
        current_medalist = {}
        athlete_id = row[0]
        athlete_name = row[1]
        athlete_sex = row[2]
        sport = row[3]
        event = row[4]
        medal = row[5]
        athlete_noc = row[6]
        athlete_noc_lower = athlete_noc.lower()

        if noc_lower is not None and noc_lower != athlete_noc_lower:
            continue

        current_medalist["athlete_id"] = athlete_id
        current_medalist["athlete_name"] = athlete_name
        current_medalist["athlete_sex"] = athlete_sex
        current_medalist["sport"] = sport
        current_medalist["event"] = event
        current_medalist["medal"] = medal

        medalists.append(current_medalist)

    return json.dumps(medalists)
    connection.close()


if __name__ == '__main__':
    parser = argparse.ArgumentParser('A Flask API for the Olympics Database')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
