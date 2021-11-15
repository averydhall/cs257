'''
    api.py
    Anders Shenholm and Avery Hall
    10, November 2021

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
            if not year['year'] == None:
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
            if not team['team'] == None:
                team_list.append(team)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(team_list)

@api.route('rosters/<team>/<year>')
#bug: some players are excluded because of stuff attached to their name string or possibly bad data
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
               WHERE players.name ILIKE stats.name
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
            for item in player:
                if player[item] == None:
                    player[item] = "n/a"
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


@api.route('/player_info/bio/<player_name>/')
def get_player_info_bio(player_name):
    ''' Returns info needed for bio on player page
    '''
    player_name = player_name = '%' + player_name.replace('-', ' ') + '%';

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
            for item in player:
                if player[item] == None:
                    player[item] = "n/a"
            bio_list.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(bio_list)


@api.route('/player_info/stats/<player_name>/')
def get_player_info_stats(player_name):

    player_name = '%' + player_name.replace('-', ' ') + '%';
    query = '''SELECT
                year,
                name,
                position,
                age,
                team,
                G,
                GS,
                MP,
                PER,
                TS_,
                USG_,
                OWS,
                DWS,
                WS,
                WS_per_48,
                OBPM,
                DBPM,
                BPM,
                VORP,
                FG,
                FGA,
                FG_,
                threeP,
                threePA,
                threeP_,
                twoP,
                twoPA,
                twoP_,
                eFG_,
                FT,
                FTA,
                FT_,
                ORB,
                DRB,
                TRB,
                AST,
                STL,
                BLK,
                TOV,
                PF,
                PTS
               FROM stats
               WHERE stats.name ILIKE %s
               ORDER BY stats.year
               '''
    stats_list = []

    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (player_name,))
        for row in cursor:
            player = {
                'year':row[0],
                'name':row[1],
                'position':row[2],
                'age':row[3],
                'team':row[4],
                'G':row[5],
                'GS':row[6],
                'MP':row[7],
                'PER':row[8],
                'TS_':row[9],
                'USG_':row[10],
                'OWS':row[11],
                'DWS':row[12],
                'WS':row[13],
                'WS_per_48':row[14],
                'OBPM':row[15],
                'DBPM':row[16],
                'BPM':row[17],
                'VORP':row[18],
                'FG':row[19],
                'FGA':row[20],
                'FG_':row[21],
                'threeP':row[22],
                'threePA':row[23],
                'threeP_':row[24],
                'twoP':row[25],
                'twoPA':row[26],
                'twoP_':row[27],
                'eFG_':row[28],
                'FT':row[29],
                'FTA':row[30],
                'FT_':row[31],
                'ORB':row[32],
                'DRB':row[33],
                'TRB':row[34],
                'AST':row[35],
                'STL':row[36],
                'BLK':row[37],
                'TOV':row[38],
                'PF':row[39],
                'PTS':row[40]
            }
            for item in player:
                if player[item] == None:
                    player[item] = "n/a"


            stats_list.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(stats_list)

@api.route('/rankings/single-year/single-team/<category>/<team>/<year>/')
def get_ranking(category, team, year):
    category_string = category
    team_string = team
    year_string = year
    #print(category + ", " + team + ", " + year)
    query = '''SELECT stats.name, stats.'''+ category_string +'''
                FROM stats
                WHERE stats.year = %s
                AND stats.team = %s
                GROUP BY stats.name, stats.'''+ category_string +'''
                ORDER BY stats.'''+ category_string +''' DESC
                LIMIT 5;'''
    ranking = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (year_string, team_string,))
        for row in cursor:
            player = {
                'name':row[0],
                'stat_total':row[1]
            }
            ranking.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(ranking)
