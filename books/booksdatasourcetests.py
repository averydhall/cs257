'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
'''

import booksdatasource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = booksdatasource.BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry'))

    def test_authors_bronte(self):
        authors = self.data_source.authors('Brontë')
        self.assertTrue(len(authors) == 1)
        self.assertEquals(authors, [Author('Brontë', 'Ann'), Author('Brontë', 'Charlotte'), Author('Brontë', 'Emily')])
        # Test if book title is printed next to authors name?
 

    def test_author_nonexistent(self):
        authors = self.data_source.authors('ghjk')
        self.assertTrue(len(authors) == 0)

    def test_author_emptyString(self):
        authors = self.data_source.authors('')
        self.assertTrue(len(authors) == 41)
        self.assertTrue(authors[0] == Author('Austen', 'Jane'))
        self.assertTrue(authors[40] == Author('Wodehouse', 'Pelham Grenville'))
        
    def test_author_partial(self):
        authors = self.data_source.authors('or')
        self.assertTrue(titles[0] == Author('Morrison', 'Toni'))
        self.assertTrue(titles[2] == Author('Orenstein', 'Peggy'))

    def test_unique_title(self):
        titles = self.data_source.books('The Fire Next Time')
        self.assertTrue(len(titles) == 1)
        self.assertTrue(titles[0] == Title('The Fire Next Time'))
        self.assertTrue(titles[0] == Author('Baldwin', 'James'))

    def test_title_option_n(self):
        titles = self.data_source.books('and', 'n')
        self.assertTrue(len(titles) == 6)
        self.assertTrue(titles[0] == Title('Boys and Sex'))
        self.assertTrue(titles[3] == Title('Sense and Sensibility'))
        self.assertTrue(titles[4] == Author('Orenstein', 'Peggy'))
        self.assertTrue(titles[5] == Title('The Life and Opinions of Tristram Shandy, Gentleman'))

    def test_unique_title_option_y(self):
        titles = self.data_source.books('and', 'y')
        self.assertTrue(len(titles) == 6)
        self.assertTrue(titles[0] == Title('The Life and Opinions of Tristram Shandy, Gentleman'))
        self.assertTrue(titles[1] == Author('Austen','Jane'))
        self.assertTrue(titles[5] == Title('Boys and Sex'))

    def test_title_nonexistent(self):
        titles = self.data_source.books('asdf', 'n')
        self.assertTrue(len(titles) == 0)

    def test_title_emptyString(self):
        titles = self.data_source.books('')
        self.assertTrue(len(authors) == 41)
        self.assertTrue(titles[0] == Author('All Clear'))
        self.assertTrue(titles[40] == Author('There, There'))

    def test_title_partial(self):
        titles = self.data_source.books('wo')
        self.assertTrue(len(titles) == 2)
        self.assertEquals(titles, ['Hard-Boiled Wonderland and the End of the World', 'The Code of the Woosters'])
        #Hard-Boiled has 2 instances of the "wo" so tests for that too

    
    def test_title_option_y_small_set(self):
        self.data_source = booksdatasource.BooksDataSource('bookstest1.csv')
        titles = self.data_source.books('', y)
        self.assertEqual(titles, ['And Then There Were None', 'Beloved', 'Schoolgirls', 'To Say Nothing of the Dog', 'All Clear', 'Blackout'])
    
    def test_title_option_n_small_set(self):
        self.data_source = booksdatasource.BooksDataSource('bookstest1.csv')
        titles = self.data_source.books('', n)
        self.assertEqual(titles, ['All Clear', 'And Then There Were None', 'Beloved', 'Blackout', 'Schoolgirls', 'To Say Nothing of the Dog'])
        
    def test_betweenyrs_unique(self):
        titles = self.data_source.books_between_years(1920,1921)
        self.assertTrue(len(books) == 1)
        #self.assertEquals(titles, ['Main Street'])
        #This line will not work bc list is full of book objects, not titles
    
    def test_betweenyrs_same_year(self):
        books = self.data_source.books_between_years(1920,1920)
        self.assertTrue(len(books) == 1)
        #self.assertEquals(titles, ['Main Street'])
        #same as before
    
    def test_betweenyrs_group(self):
        books = self.data_source.books_between_years(1920,1927)
        self.assertTrue(len(books) == 3)
        #self.assertEquals(titles, ['Main Street', 'Leave it to Psmith', 'Elmer Gantry'])
        #same as before
    
    def test_betweenyrs_tie(self):
        self.data_source = booksdatasource.BooksDataSource('bookstest1.csv')
        books = self.data_source.books_between_years(2009,2030)
        self.assertTrue(len(books) == 2)
        #self.assertEquals(titles, ['All Clear', 'Blackout'])
        #Same
        
    def test_betweenyrs_empty(self):
        books = self.data_source.books_between_years(None,None)
        self.assertTrue(len(books) == 41)
        #self.assertTrue(titles[0] == Author('The Life and Opinions of Tristram Shandy, Gentleman'))
        #self.assertTrue(titles[40] == Author('The Invisible Life of Addie LaRue'))
        #same
    
    def test_betweenyrs_no_start_date(self):
        self.data_source = booksdatasource.BooksDataSource('bookstest1.csv')
        books = self.data_source.books_between_years(None,1995)
        self.assertTrue(len(books) == 3)
        #self.assertEquals(titles, ['And Then There Were None', 'Beloved', 'Schoolgirls'])
        #Same
    
    def test_betweenyrs_no_end_date(self):
        books = self.data_source.books_between_years(2005,None)
        self.assertTrue(len(books) == 2)
        #self.assertEquals(titles, ['All Clear', 'Blackout'])
        #Same


if __name__ == '__main__':
    unittest.main()
