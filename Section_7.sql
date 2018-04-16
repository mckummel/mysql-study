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

-- reverse

SELECT REVERSE(title) AS 'Reverse Title' FROM books;

-- using concat,replace,substring and reverse
SELECT REPLACE(CONCAT(SUBSTRING(REVERSE(title),1,10),'...'),'a','@') AS 'Reverse Title' FROM books;

-- char length

SELECT title,CHAR_LENGTH(title) AS 'Title char length' FROM books;

SELECT CONCAT(title,' is ',CHAR_LENGTH(title),' characters long') AS 'Title char length' FROM books;

-- upper and lower

SELECT UPPER(title) FROM books;

SELECT LOWER(title) FROM books;

SELECT CONCAT(UPPER(SUBSTRING(title,1,10)),LOWER(SUBSTRING(title,11))) FROM books;