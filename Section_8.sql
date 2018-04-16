USE bookstore_db;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
-- distinct


SELECT DISTINCT(author_lname) FROM books;

SELECT DISTINCT(released_year) FROM books;

SELECT DISTINCT(CONCAT(author_fname,' ', author_lname)) as 'distinct names' FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;

-- order by

SELECT author_lname FROM books ORDER BY author_lname;

SELECT title FROM books ORDER BY title;

SELECT title FROM books ORDER BY title DESC;

SELECT released_year FROM books ORDER BY released_year;

SELECT * FROM books ORDER BY author_fname,author_lname;

-- limit

SELECT * FROM books LIMIT 3;

SELECT * FROM books ORDER BY released_year DESC LIMIT 6;

SELECT * FROM books ORDER BY released_year DESC LIMIT 5,10;

-- like

SELECT * FROM books WHERE author_fname LIKE 'da%';

SELECT * FROM books WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE author_fname LIKE '%da';

SELECT * FROM books WHERE title LIKE '%the%';

SELECT * FROM books WHERE stock_quantity LIKE '____';

SELECT * FROM books WHERE stock_quantity LIKE '___';

SELECT * FROM books WHERE title LIKE '%\%%';