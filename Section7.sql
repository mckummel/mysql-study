USE bookstore_db;

-- concat

SELECT author_fname, author_lname FROM books;

SELECT CONCAT(author_fname, ' ' ,author_lname) AS 'Author Name' FROM books;

-- everything that is concat is separated by -

SELECT CONCAT_WS('-',title,author_fname,author_lname) AS 'something' FROM books;


-- substring

SELECT SUBSTRING('Hello World', 1 ,5);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World',-3);

SELECT SUBSTRING(title,1,10) AS Title FROM books;

SELECT CONCAT(SUBSTRING(title,1,10),'...') AS Title FROM books;

-- replace

SELECT REPLACE('Hello World','o','0');

SELECT REPLACE(title,'e','&') AS Title FROM books;

SELECT SUBSTRING(REPLACE(title,'e','&'),1,10) AS Title FROM books;