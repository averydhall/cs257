#Author: Avery Hall
#Using one day extension

import psycopg2
import argparse

from config import password
from config import database
from config import user

def display_usage():
    f = open('usage.txt', 'r')
    usage_statement = f.read()
    print(usage_statement)
    f.close()


#Set up argparse
parser = argparse.ArgumentParser(add_help = False)
group = parser.add_mutually_exclusive_group()

group.add_argument('-h', '--help', action = 'store_true', dest = 'help_requested')
group.add_argument('-ng', '--nocgolds', action = 'store_true', dest = 'nocs_by_num_golds')
group.add_argument('-ag', '--athgolds', action = 'store_true', dest = 'athletes_by_num_golds')
group.add_argument('-a', '--athletes', type = str, default = None, dest = 'athletes_from_noc', nargs = '?')

args = parser.parse_args()

#Establish database connection
try:
    connection = psycopg2.connect(database=database, user=user, password=password)
except Exception as e:
    print(e)
    exit()

if args.nocs_by_num_golds:
    #Execute query
    try:
        cursor = connection.cursor()
        query = '''SELECT nocs.noc, COUNT(*) AS number_of_golds
                    FROM nocs, event_results
                    WHERE nocs.id = event_results.noc_id
                    AND event_results.medal = 'Gold'
                    GROUP BY nocs.noc
                    ORDER BY number_of_golds DESC;'''
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    #Print output
    print('===== NOCs by number of gold medals =====')
    for row in cursor:
        print(row[0], row[1])
    print()

elif args.athletes_by_num_golds:
    #Execute query
    try:
        cursor = connection.cursor()
        query = '''SELECT athletes.name, countries.country, COUNT(*) AS number_of_golds
                    FROM athletes, event_results, countries
                    WHERE athletes.id = event_results.athlete_id
                    AND countries.id = event_results.country_id
                    AND event_results.medal = 'Gold'
                    GROUP BY athletes.name, countries.country
                    ORDER BY number_of_golds DESC
                    LIMIT 50;'''
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    #Print output
    print('===== Athletes by number of gold medals =====')
    print()
    for row in cursor:
        print(row[0])
        print(row[1] + " // " + str(row[2]) + " golds won")
        print()

elif args.athletes_from_noc:
    if args.athletes_from_noc == "":
        print("Error: You must specify a three letter NOC")
    #Execute query
    search_string = args.athletes_from_noc
    query = '''SELECT DISTINCT athletes.name
                FROM athletes, nocs, event_results
                WHERE athletes.id = event_results.athlete_id
                AND nocs.id = event_results.noc_id
                AND nocs.noc = %s
                ORDER BY athletes.name;'''
    try:
        cursor = connection.cursor()
        cursor.execute(query, (search_string,))
    except Exception as e:
        print(e)
        exit()

    #Print output
    print('===== Athletes from {0} ====='.format(search_string))
    for row in cursor:
        print(row[0])
    print()

elif args.help_requested:
    display_usage()

else:
    display_usage()


connection.close()
