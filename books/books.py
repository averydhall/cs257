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
                
def display_title(books_to_display_list):
    for book in books_to_display_list:
        print(book.title)
    
def main():
    data_source = booksdatasource.BooksDataSource('books1.csv')

    parser = argparse.ArgumentParser("parses arguements", add_help = False)

    parser.add_argument("-t", "--title", type = str, dest = "title_search")
    parser.add_argument("-n", action = "store_true", dest = "sort_by_title")
    parser.add_argument("-y", action = "store_true", dest = "sort_by_year")
    parser.add_argument("-a", "--author", type = str, dest = "author_search")
    parser.add_argument("-r", "--range", action = "store_true", dest = "search_by_year_range")
    parser.add_argument("-h", "-?", "--help", action = "store_true", dest = "request_help")
    parser.add_argument("--start_yr", type = int)
    parser.add_argument("--end_yr", type = int)


    args = parser.parse_args()

    if args.request_help:
        display_usage()
        
    if args.title_search is not None:
        if args.sort_by_year == True:
            book_list = data_source.books(args.title_search, "year")
            display_title(book_list)
        else:
            book_list = data_source.books(args.title_search, "title")
            display_title(book_list)

    elif args.author_search is not None:
        #if len(args.search_string)==0:
         #   author_list = data_source.authors("")
        #else:
         #   author_list = data_source.authors(" ".join(args.search_string))
        book_list = []
        for author in data_source.author_collection:
            full_name = author.given_name + ' ' + author.surname
            if args.author_search in full_name:
                for book in author.author_works:
                    book_list.append(book.title)
            print(author.given_name + ' ' + author.surname)
            print(book_list)

        #book_list = data_source.books("", "title")
        #for author in author_list:
            #author_works = []
            #for book in book_list:
             #   for single_author in book.authors:
              #      if single_author == author:
               #         author_works.append(book.title)
            #print(author.given_name + ' ' + author.surname)
            #print(author_works)

    elif args.search_by_year_range:
        year_list = data_source.books_between_years(args.start_yr,args.end_yr)
        
        for book in year_list:
            print(book.title + ", " + book.publication_year)

    else:
        display_usage()


if __name__ == '__main__':
    main()