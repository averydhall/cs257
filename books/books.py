'''
   books.py
   Elliot Hanson and Avery Hall, 2 October 2021
'''
import argparse
import booksdatasource

f = open( "usage.txt", "r")
file_contents = f.read()

data_source = booksdatasource.BooksDataSource('books1.csv')

parser = argparse.ArgumentParser("parses arguements", add_help = False)

parser.add_argument("-t", "--title", action = "store_true", dest = "t")
parser.add_argument("-n", action = "store_true", dest = "n")
parser.add_argument("-y", action = "store_true", dest = "y")

parser.add_argument("-a", "--author", action = "store_true", dest = "a")

parser.add_argument("-r", "--range", action = "store_true", dest = "r")

parser.add_argument("-h", "-?", "--help", action = "store_true", dest = "h")

parser.add_argument("search_string", type = str, nargs = '*')

args = parser.parse_args()

if args.h == True:
    print(file_contents)

if args.t == True:
    if args.y == True:
        book_list = data_source.books(" ".join(args.search_string), "years")
        for returned_book in book_list:
            print(returned_book.title)
    else:
        book_list = data_source.books(" ".join(args.search_string), "title")
        for returned_book in book_list:
            print(returned_book.title)

elif args.a == True:
    book_list = booksdatasource.books(args.search_string, "years")
    
elif args.r == True:
    year_list = args.search_string.split()

else:
    print(file_contents)


f.close()
