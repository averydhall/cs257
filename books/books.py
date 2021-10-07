'''
   books.py
   Elliot Hanson and Avery Hall, 2 October 2021
'''
import argparse
import booksdatasource

def display_usage():
    f = open('usage.txt', 'r')
    usage_statement = f.read()
    print(usage_statement)
    f.close()
                
    
def main():
    
    data_source = booksdatasource.BooksDataSource('books1.csv')

    parser = argparse.ArgumentParser("parses arguements", add_help = False)

    parser.add_argument("-t", "--title", action = "store_true", dest = "t")
    parser.add_argument("-n", action = "store_true", dest = "n")
    parser.add_argument("-y", action = "store_true", dest = "y")
    parser.add_argument("-a", "--author", action = "store_true", dest = "a")
    parser.add_argument("-r", "--range", action = "store_true", dest = "r")
    parser.add_argument("-h", "-?", "--help", action = "store_true", dest = "help_wanted")
    parser.add_argument("search_string", type = str, nargs = '*')

    args = parser.parse_args()

    if args.help_wanted:
        display_usage()
        
    if args.t == True:
        if args.y == True:
            book_list = data_source.books(" ".join(args.search_string), "year")
            for returned_book in book_list:
                print(returned_book.title)
        else:
            book_list = data_source.books(" ".join(args.search_string), "title")
            for returned_book in book_list:
                print(returned_book.title)

    elif args.a == True:
        if len(args.search_string)==0:
            author_list = data_source.authors("")
        else:
            author_list = data_source.authors(" ".join(args.search_string))
        book_list = data_source.books("", "title")
        for author in author_list:
            author_works = []
            for book in book_list:
                for single_author in book.authors:
                    if single_author == author:
                        author_works.append(book.title)
            print(author.given_name + ' ' + author.surname)
            print(author_works)

    elif args.r == True:
        if len(args.search_string)==0:
            year_list = data_source.books_between_years(None,None)
        #if len(args.search_string) == 1, (one year, no comma provided) throw error?
        else:
            dates = args.search_string[0].split(",")
            year_list = data_source.books_between_years(dates[0],dates[1])
        for book in year_list:
            print(book.title + ", " + book.publication_year)


    else:
        display_usage()


if __name__ == '__main__':
    main()