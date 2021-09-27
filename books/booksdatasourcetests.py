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


    def test_author_nonexistent(self):
        authors = self.data_source.authors('ghjk')
        self.assertTrue(len(authors) == 0)

    def test_author_emptyString(self):
        authors = self.data_source.authors('')
        self.assertTrue(len(authors)) == 41)
        self.assertTrue(authors[0] == Author('Austen', 'Jane')
        self.assertTrue(authors[40] == Author('Wodehouse', 'Pelham Grenville')

    def test_author_partial(self):
        authors = self.data_source.authors('or')
        self.assertTrue(titles[0] == Author('Morrison', 'Toni'))
        self.assertTrue(titles[2] == Author('Orenstein', 'Peggy'))

    def test_unique_title(self):
        titles = self.data_source.books('The Fire Next Time')
        self.assertTrue(len(titles) == 1)
        self.assertTrue(titles[0] == Title('The Fire Next Time'))
        self.assertTrue(titles[0] == Author('Baldwin', 'James'))

    def test_title_Option_n(self):
        titles = self.data_source.books('and', 'n')
        self.assertTrue(len(titles) == 6)
        self.assertTrue(titles[0] == Title('Boys and Sex'))
        self.assertTrue(titles[3] == Title('Sense and Sensibility'))
        self.assertTrue(titles[4] == Author('Orenstein', 'Peggy'))
        self.assertTrue(titles[5] == Title('The Life and Opinions of Tristram Shandy, Gentleman'))

    def test_unique_title_Option_y(self):
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
        self.assertTrue(len(authors)) == 41)
        self.assertTrue(titles[0] == Author('All Clear')
        self.assertTrue(titles[40] == Author('There, There')

    def test_title_partial(self):
        titles = self.data_source.books('')
        self.


    def test_betweenyrs_unique(self):

    def test_betweenyrs_empty(self):




if __name__ == '__main__':
    unittest.main()
