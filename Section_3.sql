CREATE DATABASE dog_walking_app;

CREATE DATABASE Twitter;

USE Twitter;

SELECT database();

CREATE TABLE Tweets ( -- use names in plural
	 username varchar(15),
     tweet varchar(140),
     favorites int
);

CREATE DATABASE Cat_App;

USE Cat_App;

CREATE TABLE Cats
(
	name varchar(100),
    age int,
    breed varchar(100)

);

SHOW TABLES;

SHOW COLUMNS FROM Cats;

DESC Cats; -- almost the same as show columns from


CREATE TABLE CatsErr
(
	name varchar(100),
    age int,
    breed varchar(100)

);

SHOW TABLES;

DROP TABLE CatsErr;

SHOW TABLES;

-- challenge 1

CREATE DATABASE bakery;

USE bakery;

CREATE TABLE pastries
(
	name varchar(50),
    quantity int
);

DESC pastries;

DROP TABLE pastries;

DROP DATABASE bakery;





