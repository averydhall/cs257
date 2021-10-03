#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2021
    Edited by Elliot Hanson, and Avery Hall
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

class BooksDataSource:
    def __init__(self, books_csv_file_name, book_collection = []):
        ''' The books CSV file format looks like this:

                title,publication_year,author_description

            For example:

                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)

            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        book_collection = []
        self.book_collection = book_collection
        with open(books_csv_file_name, mode ='r')as file:
            csv_file = csv.reader(file)
            for lines in csv_file: #for each book in the file
                author_info = lines[2].split(" and ")
                all_authors = []
                for new_author in author_info: #For each new author information string
                    name_and_dates = new_author.split()
                    dates = name_and_dates[-1].split("-")
                    born = dates[0][1:]
                    if(dates[0] == ")"): #if there is no death date
                        death = ""
                    else:
                        death = dates[1][:-1]
                    to_add_author = Author(name_and_dates[-2], " ".join(name_and_dates[:-2]), born, death)
                    for obtained_book in book_collection:
                        for obtained_author in obtained_book.authors:
                            if obtained_author == to_add_author:
                                to_add_author = obtained_author
                    all_authors.append(to_add_author)
                
                self.book_collection.append(Book(lines[0], lines[1], all_authors))


    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        result_list = []
        for cur_book in self.book_collection:
            for cur_author in cur_book.authors:
                full_name = cur_author.given_name + cur_author.surname
                
                if (search_text == None or search_text == "") and (cur_author not in result_list):
                    result_list.append(cur_author)
                    
                elif ((search_text in full_name) or (search_text.title() in full_name)) and cur_author not in result_list:
                    result_list.append(cur_author)

                sorted_result_list = sorted(result_list, key=lambda x: x.surname + x.given_name)
                
        return sorted_result_list

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.

            The list of books is sorted in an order depending on the sort_by parameter:

                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        result_list = []
        if search_text == None or search_text == "":
            result_list = self.book_collection
        else:
            for cur_book in self.book_collection:
                if (search_text in cur_book.title) or (search_text.title() in cur_book.title):
                    result_list.append(cur_book)
                    
        if sort_by == "title":
            sorted_result_list = sorted(result_list, key=lambda x: x.title)
        
        if sort_by == "year":
            sorted_result_list = sorted(result_list, key= lambda x: x.publication_year + x.title)
            
        return sorted_result_list

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).

            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        result_list = []
        if (start_year == None or start_year== "") and (end_year == None or end_year== ""):
            result_list = self.book_collection
            
        elif start_year != None and (end_year == None or end_year == ""):
            for cur_book in self.book_collection:
                if int(cur_book.publication_year) >= int(start_year):
                    result_list.append(cur_book)
                    
        elif end_year != None and (start_year == None or start_year == ""):
            for cur_book in self.book_collection:
                    if int(cur_book.publication_year) <= int(end_year):
                        result_list.append(cur_book)
        else:
            for cur_book in self.book_collection:
                if (int(cur_book.publication_year) <= int(end_year)) and (int(cur_book.publication_year) >= int(start_year)):
                    result_list.append(cur_book)
                        

        sorted_result_list = sorted(result_list, key=lambda x: x.publication_year + x.title)
        
        return sorted_result_list

