#Author: Avery Hall

'''
 Requirements:

   -Prints a usage statement for "python3 olympics.py -h" (or --help). You may use argparse or
    not for command-line parsing and usage statement printing.

   -List the names of all the athletes from a specified NOC.

   -List all the NOCs and the number of gold medals they have won, in decreasing order of the
    number of gold medals.

   -One more operation of your choosing. Simple is fine, crazily-ambitious is also fine. (Both
    are worth the same number of points, though crazily-ambitious may earn you more points on the
    Cosmic Scoreboard. Or fewer. I have no idea how the cosmos keeps score.)


USAGE

Name:
    python3 olympics.py -- a CLI that executes specific SQL queries for the books database

Synopsis:
    python3 olympics.py -h
    python3 olympics.py -a NOC
    python3 olympics.py -g
    python3 olympics.py -c

Description:
    python3 olympics.py has three uses that correspond with three respective flags, in addition to a
    usage statement command. Each command uses psycopg2 to send queries to the books database and
    receive and print the appropriate outputs.

         -h --help      prints this usage statement

     -a --athletes      lists the names of all the athletes from a specified NOC

        -g --golds      lists all NOCs and their respective numbers of gold medals won

       -c --custom      performs a custom query <---CHANGE THIS

'''

import psycopg2
import argparse

from config import password
from config import database
from config import user


parser = argparse.ArgumentParser(add_help = False)
group = parser.add_mutually_exclusive_group()

group.add_argument('-h', '--help', action = 'store_true', dest = 'help_requested')
group.add_argument('-g', '--golds' action = 'store_true', dest = 'num_golds_per_noc')
group.add_argument('-c', '--custom' action = 'store_true')
group.add_argument('-a', '--athletes', type = str, default = '', dest = 'all_athletes_from_noc', nargs = '?')

parser.parse_args()

#Connect
try:
    connection = psycopg2.connect(database=database, user=user, password=password)
except Exception as e:
    print(e)
    exit()

if args.help_requested:
    '''Print usage statement'''

if args.num_golds_per_noc:
    #Query
    try:
        cursor = connection.cursor()
        query = 'SELECT first_name, last_name FROM authors ORDER BY last_name'
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

if args.((custom flag)):
    '''Print golds'''

if args.all_athletes_from_noc:
    '''Print athletes by NOC'''




#Query
try:
    cursor = connection.cursor()
    query = 'SELECT first_name, last_name FROM authors ORDER BY last_name'
    cursor.execute(query)
except Exception as e:
    print(e)
    exit()

#Print results
print('something')
for row in cursor:
    print(row[0], row[1])
print()





connection.close()
