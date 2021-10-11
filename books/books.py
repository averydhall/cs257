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
                
def display_title(list_of_books_to_display):
    for book in list_of_books_to_display:
        authors_string = ""
        for i in range(len(book.authors)):
            author = book.authors[i]
            if i > 0 and i < len(book.authors):
                authors_string += " and "
                
            authors_string += author.given_name + ' ' + author.surname
            
        print('"' +book.title + '"' + ", " + authors_string + ", " + book.publication_year)

def display_authors(list_of_authors_to_display):
    for author in list_of_authors_to_display:
        author_name = author.surname + ", " + author.given_name
        author_life_span = " (" + author.birth_year + "-" + author.death_year + '):'
        print(author_name + author_life_span)
        
        for book in author.author_works:
            print('  "' + book.title + '" (' + book.publication_year + ')')
        print()
            

    
def main():
    data_source = booksdatasource.BooksDataSource('books1.csv')

    parser = argparse.ArgumentParser("parses arguments", add_help = False)

    parser.add_argument('-t', '--title', type = str, dest = "title_search")
    parser.add_argument("-n", action = "store_true", dest = "sort_by_title")
    parser.add_argument("-y", action = "store_true", dest = "sort_by_year")
    parser.add_argument("-a", "--author", type = str, dest = "author_search")
    parser.add_argument("-r", "--range", action = "store_true", dest = "search_by_year_range")
    parser.add_argument("-h", "-?", "--help", action = "store_true", dest = "request_help")
    parser.add_argument("-s", "--start_yr", type = int, dest = "start_yr")
    parser.add_argument("-e", "--end_yr", type = int, dest = "end_yr")


    args = parser.parse_args()

    if args.request_help:
        display_usage()
        
    elif args.title_search is not None:
        if args.sort_by_year == True:
            book_list = data_source.books(args.title_search, "year")
            display_title(book_list)
        else:
            book_list = data_source.books(args.title_search, "title")
            display_title(book_list)

    elif args.author_search is not None:
        author_list = data_source.authors(args.author_search)
        display_authors(author_list)


    elif args.search_by_year_range:
        year_list = data_source.books_between_years(args.start_yr,args.end_yr)
        
        for book in year_list:
            print(book.title + ", " + book.publication_year)

    else:
        display_usage()


if __name__ == '__main__':
    main()