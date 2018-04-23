USE bookstore_db;

-- count

SELECT COUNT(*) AS 'Books' FROM books;

SELECT COUNT(DISTINCT author_fname) AS 'Distinct author fnames' FROM books;

SELECT COUNT(DISTINCT author_lname) AS 'Distinct author lnames' FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) AS 'Distinct author fnames' FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- group by

SELECT title,author_lname FROM books;

SELECT title,author_lname FROM books GROUP BY author_lname,title; -- error 1055 without title on group by

SELECT author_lname,COUNT(*) FROM books GROUP BY author_lname;

SELECT title,author_fname,author_lname FROM books;

SELECT author_fname,author_lname,COUNT(*) FROM books GROUP BY author_lname,author_fname;

SELECT released_year,COUNT(*) FROM books GROUP BY released_year;

-- MAX MIN

SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT * FROM books WHERE pages = 
	(SELECT MIN(pages) FROM books);
 
 SELECT * FROM books ORDER BY pages ASC LIMIT 1;

-- min max group by

SELECT author_fname,author_lname,MIN(released_year)
FROM books
GROUP BY author_lname,author_fname;

SELECT author_fname, author_lname, MAX(pages)
FROM books
GROUP BY author_lname,author_fname;

-- sum

SELECT SUM(pages) FROM books;

SELECT author_fname,author_lname,SUM(pages) FROM books
GROUP BY author_lname,author_fname;

SELECT author_fname,author_lname,SUM(released_year) FROM books
GROUP BY author_lname,author_fname;

-- avg

SELECT AVG(released_year) FROM books;

SELECT AVG(pages) FROM books;

SELECT AVG(stock_quantity), released_year FROM books
GROUP BY released_year;

SELECT author_fname,author_lname,AVG(pages) 
FROM books
GROUP BY author_lname,author_fname;