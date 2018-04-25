USE bookstore_db;

-- decimal

CREATE TABLE items
(
	price DECIMAL(5,2)
);

INSERT INTO items(price) VALUES(7);

INSERT INTO items(price) VALUES(7555555); -- out of range

INSERT INTO items(price) VALUES(34.88);

INSERT INTO items(price) VALUES(299.8888);

INSERT INTO items(price) VALUES(1.8888);

INSERT INTO items(price) VALUES(1.999);

INSERT INTO items(price) VALUES(299.9999);

SELECT * FROM items;

-- float and double

CREATE TABLE items2
(
	price FLOAT
);

INSERT INTO items2(price) VALUES(88.45);

INSERT INTO items2(price) VALUES(88.7745);

INSERT INTO items2(price) VALUES(8877665544.45);

SELECT * FROM items2;

-- date time datetime

CREATE TABLE people
(
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdatetime DATETIME
);

INSERT INTO people(name,birthdate,birthtime,birthdatetime)
VALUES('Test1','1983-11-11','10:07:34','1983-11-11 10:07:34');

INSERT INTO people(name,birthdate,birthtime,birthdatetime)
VALUES('Test2','1955-12-02','07:10:54','1955-12-02 07:10:54');

SELECT * FROM people;

-- curdate curtime now

INSERT INTO people(name,birthdate,birthtime,birthdatetime)
VALUES('Test3',curdate(),curtime(),now());

SELECT * FROM people;

-- formatting dates

SELECT name,birthdate FROM people;

SELECT name,day(birthdate) FROM people;

SELECT name,month(birthdate) FROM people;

SELECT name,year(birthdate) FROM people;

SELECT name,day(birthdate),dayofweek(birthdate) FROM people;

SELECT name,day(birthdate),dayofmonth(birthdate) FROM people;

SELECT name,day(birthdate),dayofyear(birthdate) FROM people;

SELECT name,day(birthdatetime),dayofyear(birthdatetime) FROM people;

SELECT name,day(birthdatetime),month(birthdatetime) FROM people;

SELECT name,hour(birthtime),minute(birthtime),second(birthtime) FROM people;

SELECT DATE_FORMAT(now(), '%W %M %Y');

SELECT DATE_FORMAT(now(), '%W-%M-%Y');

SELECT DATE_FORMAT(now(), '%M, %D %Y');

SELECT DATE_FORMAT(birthdate, '%M %D %Y') FROM people;

SELECT DATE_FORMAT(birthdate, '%m/%d/%Y') FROM people;

SELECT DATE_FORMAT(birthdatetime, '%m/%d/%Y at %h:%m') FROM people;