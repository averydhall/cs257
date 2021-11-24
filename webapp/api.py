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

def getConnection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)


@api.route('/help')
def getHelp():
    contents = '';
    with open("api-help.txt", "r") as f:
        for line in f:
            contents += '</br>'
            contents += line

    return contents


#improve this by listing extinct teams separately at bottom of list
@api.route('/teams')
def getTeams():
    ''' Returns a list of the teams in the db (in order)
    '''
    query = '''SELECT DISTINCT stats.team FROM stats ORDER BY stats.team; '''

    team_list = []
    try:
        connection = getConnection()
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
#CONCAT with asterisk is there so that players who have an asterisk by their name (all star season) are included
def getRoster(team, year):

    ''' Returns basic info for a team's roster
        The birthdate comparison is addressing a bug where players with the
        same name as a player on the roster that played some other year would show up
    '''

    query = '''

                SELECT players.name,
                players.first_year,
                players.last_year,
                players.position,
                players.height,
                players.weight,
                players.birth_date,
                players.college


               FROM players, stats
               WHERE (-1 + stats.year - CAST(RIGHT(players.birth_date, 4) AS int) = stats.age
               OR stats.year - CAST(RIGHT(players.birth_date, 4) AS int) = stats.age)
               AND (stats.name = players.name
               OR stats.name = CONCAT(players.name, '*'))
               AND stats.team = %s
               AND stats.year = %s
               ORDER BY stats.pts DESC
               '''
    #player age and birthdate
    roster = []
    try:
        connection = getConnection()
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

# --------------------- PLAYER-INFO ----------------------

@api.route('/players')

def getPlayers():
    ''' Finds all player names in db. Used to load player name search suggestions
    '''
    query = '''SELECT players.name FROM players ORDER BY players.name; '''

    player_list = []
    try:
        connection = getConnection()
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


@api.route('/player-info/bio/<player_name>/')
def getPlayerInfoBio(player_name):
    ''' Returns info needed for bio on player page
    '''
    bio_list = []
    player_name = player_name.replace('-', ' ').replace('*', '');
    query = '''SELECT players.name,
                players.first_year,
                players.last_year,
                players.position,
                players.height,
                players.weight,
                players.birth_date,
                players.college

               FROM players
               WHERE players.name = %s
               '''

    try:
        connection = getConnection()
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


@api.route('/player-info/stats/<player_name>/')
def getPlayerInfoStats(player_name):
    player_name = player_name.replace('-', ' ');
    asterisk_name = player_name;
    asterisk_name += '*';
    #asterisk_name accounts for all-star seasons, where stats.name includes an extra asterisk

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
               WHERE (stats.name = %s
               OR stats.name = %s)
               ORDER BY stats.year
               '''
    stats_list = []

    try:
        connection = getConnection()
        cursor = connection.cursor()
        cursor.execute(query, (player_name, asterisk_name))
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
def getRanking(category, team, year):
    query = '''SELECT stats.name, stats.'''+ category +'''
                FROM stats
                WHERE stats.year = %s
                AND stats.team = %s
                GROUP BY stats.name, stats.'''+ category +'''
                ORDER BY stats.'''+ category +''' DESC
                LIMIT 5;'''
    ranking = []
    try:
        connection = getConnection()
        cursor = connection.cursor()
        cursor.execute(query, (year, team))
        for row in cursor:
            if(row[1]):
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


#This endpoint does not get used in the current iteration of the website,
# but it was left in this api due to its potential usefulness for future
# development.
@api.route('/team-year-ranges')
def getAllTeamYearRanges():
    query = '''SELECT stats.team, MIN(stats.year), MAX(stats.year)
                FROM stats
                GROUP BY stats.team;'''
    yearRanges = {}
    try:
        connection = getConnection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            if (row[0] != None):
                yearRanges[row[0]] = [str(row[1]), str(row[2])]
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(yearRanges)
