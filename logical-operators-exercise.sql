SELECT 10 != 10; -- 0

SELECT 15 > 14 && 99 - 5 <= 94; -- 1

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; -- 1 because of the right side

SELECT * FROM books WHERE released_year < 1980;

SELECT * FROM books WHERE author_lname IN ('Eggers','Chabon');

SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT title,pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title,author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 's%';

SELECT title,author_lname ,
	CASE WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
    END AS 'Type'
FROM books;

SELECT author_lname,
	CASE WHEN COUNT(*) = 1 THEN '1 book'
    WHEN COUNT(*) = 2 THEN '2 books'
    ELSE '3 books'
    END AS 'count'
FROM books GROUP BY author_lname;

SELECT author_lname,
	CASE WHEN COUNT(*) = 1 THEN '1 book'
    ELSE CONCAT(CAST(COUNT(*) AS char),' books')
    END AS 'count'
FROM books GROUP BY author_lname;