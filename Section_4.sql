-- inserting data into the db

CREATE DATABASE pet_app;

USE pet_app;

CREATE TABLE cats
(
	name varchar(50),
    age int
);

-- simple insert

INSERT INTO cats(name,age)
VALUES ('Tom',5);

INSERT INTO cats(age,name)
VALUES (10,'Grumpy');

SELECT * FROM cats;

-- multiple insert

INSERT INTO cats(name, age)
VALUES ('Blue',2),('Charlie',3),('Catt',7);

SELECT * FROM cats;

-- insert challenge

CREATE TABLE people
(
	first_name varchar(20),
    last_name varchar(20),
    age int
);

INSERT INTO people(first_name,last_name,age)
VALUES ('Matheus','K',26);

INSERT INTO people(age,first_name,last_name)
VALUES (62,'Theus','K');

INSERT INTO people(first_name,last_name,age)
VALUES ('Math','K',20),('Eus','K',40),('Maues','K',30);

SELECT * FROM people;

DROP TABLE people;

-- not null lesson

USE pet_app;

CREATE TABLE cats2
(
	name varchar(100) NOT NULL,
    age int not null
);

INSERT INTO cats2(name)
VALUES('Texas'); -- should return an error or warning

SELECT * FROM cats2;

-- default values

CREATE TABLE cats3
(
	name VARCHAR(100) DEFAULT 'Tom',
    age INT DEFAULT 0
);

INSERT INTO cats3(age) VALUES(1);

INSERT INTO cats3(name) VALUES('Thomas');

SELECT * FROM cats3;

CREATE TABLE cats4
(
	name VARCHAR(100) NOT NULL DEFAULT 'Tom',
    age INT NOT NULL DEFAULT 0
);

DESC cats4;

INSERT INTO cats4(name,age) VALUES('Cali',NULL);

-- primary key

CREATE TABLE unique_cats
(
	cat_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL DEFAULT 'Tom',
    age INT NOT NULL DEFAULT 0
);

DESC unique_cats;

INSERT INTO unique_cats(cat_id,name,age) VALUES(1,"Fred",23);

INSERT INTO unique_cats(cat_id,name,age) VALUES(2,"Louise",23);

SELECT * FROM unique_cats;

-- auto increment

CREATE TABLE unique_cats2
(
	cat_id INT auto_increment PRIMARY KEY,
	name VARCHAR(100) NOT NULL DEFAULT 'Tom',
    age INT NOT NULL DEFAULT 0
);

INSERT INTO unique_cats2(name,age) VALUES('Skippy',4);

INSERT INTO unique_cats2(name,age) VALUES('Montana',6);

SELECT * FROM unique_cats2;