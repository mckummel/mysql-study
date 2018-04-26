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

SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2000;

SELECT * FROM books WHERE released_year > 2000 AND title LIKE '%w%';

SELECT * FROM books WHERE stock_quantity > 100 && title NOT LIKE '%w%';

SELECT * FROM books WHERE stock_quantity > 100 && title NOT LIKE '%w%' AND title LIKE '%novel%';

-- OR

SELECT * FROM books WHERE released_year > 2000 OR title LIKE '%w%';

SELECT * FROM books WHERE released_year > 2005 || stock_quantity > 50;