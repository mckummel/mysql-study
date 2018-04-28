USE bookstore_db;

-- not equal

SELECT * FROM books WHERE author_lname = 'Lahiri';

SELECT * FROM books WHERE author_lname != 'Lahiri';

-- not like

SELECT title FROM books WHERE title LIKE 'W%';

SELECT title FROM books WHERE title NOT LIKE 'W%';

-- greater than

SELECT title,released_year FROM books WHERE released_year > 2000;

SELECT title,stock_quantity FROM books WHERE stock_quantity > 50;

SELECT title,released_year FROM books WHERE released_year >= 2000;

SELECT 99 > 1; -- 1 is true , 0 is false

SELECT -1 > 1; 

SELECT 'a'> 'b'; 

SELECT 'b'> 'a'; 

-- less than

SELECT title,released_year FROM books WHERE released_year < 2000;

SELECT title,released_year FROM books WHERE released_year <= 2000;

SELECT 99 < 1; -- 1 is true , 0 is false

SELECT -1 < 1; 

SELECT 'a'< 'b'; 

SELECT 'b'< 'a'; 

-- AND

SELECT * FROM books 
WHERE author_lname = 'Eggers' AND released_year > 2000;

SELECT * FROM books 
WHERE released_year > 2000 AND title LIKE '%w%';

SELECT * FROM books 
WHERE stock_quantity > 100 && title NOT LIKE '%w%';

SELECT * FROM books 
WHERE stock_quantity > 100 && title NOT LIKE '%w%' AND title LIKE '%novel%';

-- OR

SELECT * FROM books WHERE released_year > 2000 OR title LIKE '%w%';

SELECT * FROM books WHERE released_year > 2005 || stock_quantity > 50;

-- between

SELECT title, released_year FROM books 
WHERE released_year >= 2004 && released_year <= 2015;

SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;

SELECT name, birthdate FROM people
WHERE birthdatetime BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);

-- in / not in

SELECT * FROM books
WHERE author_lname='Carver' OR author_lname='Lahiri' OR author_lname='Smith';

SELECT * FROM books
WHERE author_lname IN ('Carver','Lahiri','Smith');

SELECT title, released_year FROM books
WHERE released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books
WHERE released_year >= 2000 
	  AND released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);
      
SELECT title, released_year FROM books
WHERE released_year >= 2000 
	  AND released_year % 2 != 0;