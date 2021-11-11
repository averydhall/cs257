'''
    api.py
    Anders Shenholm 10, November 2021

    API for Hoopdata web app
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

@api.route('/years') 
def get_years():
    ''' Returns a list of the years in the db (in order)
    '''
    query = '''SELECT DISTINCT stats.year FROM stats ORDER BY stats.year DESC; '''

    year_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        #we use 2 argument .execute to avoid SQL injection
        cursor.execute(query, tuple())
        for row in cursor:
            year = {'year':row[0]}
            year_list.append(year)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(year_list)

#improve this by listing extinct teams separately at bottom of list
@api.route('/teams') 
def get_teams():
    ''' Returns a list of the teams in the db (in order)
    '''
    query = '''SELECT DISTINCT stats.team FROM stats ORDER BY stats.team; '''

    team_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            team = {'team':row[0]}
            team_list.append(team)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(team_list)

@api.route('rosters/<team>/<year>')
def get_roster(team, year):
    ''' Returns basic info for a team's roster
    '''
    
    query = '''SELECT players.name,
                players.first_year,
                players.last_year,
                players.position,
                players.height,
                players.weight,
                players.birth_date,
                players.college

               FROM players, stats
               WHERE players.name = stats.name
               AND stats.team LIKE %s
               AND stats.year = %s
               '''
    roster = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (team, year))
        for row in cursor:
            player = {'name':row[0], 'first_year':row[1], 'last_year':row[2], 'position':row[3], 'height':row[4], 'weight':row[5], 'birth_date':row[6], 'college':row[7]}
            roster.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(roster)

# --------------------- PLAYER_INFO ----------------------

@api.route('/players') 

def get_players():
    ''' Finds all player names in db. Used to load player name search suggestions
    '''
    query = '''SELECT players.name FROM players ORDER BY players.name; '''

    player_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            player = {'player':row[0]}
            player_list.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(player_list)


@api.route('/player_info/<player_name>/bio') 
def get_player_info_bio(player_name):
    ''' Returns info needed for bio on player page
    '''
    
    player_name = player_name.replace('-', ' ')
    print(player_name)
    
    query = '''SELECT players.name,
                players.first_year,
                players.last_year,
                players.position,
                players.height,
                players.weight,
                players.birth_date,
                players.college

               FROM players
               WHERE players.name ILIKE %s
               '''
    bio_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (player_name,))
        for row in cursor:
            player = {'name':row[0], 'first_year':row[1], 'last_year':row[2], 'position':row[3], 'height':row[4], 'weight':row[5], 'birth_date':row[6], 'college':row[7]}
            bio_list.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(bio_list)


