CREATE DATABASE pet_app;

USE pet_app;

CREATE TABLE cats
(
	cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT
);

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
       
-- select lesson

SELECT name from cats;

SELECT age from cats;

SELECT name,age from cats;

SELECT * FROM cats WHERE age = 4;

SELECT * FROM cats WHERE name = 'Egg';

SELECT * FROM cats WHERE name = 'EgG';

-- aliases

SELECT cat_id AS id, name FROM cats;

-- update

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

UPDATE cats SET age=14 WHERE name='Misty';

-- delete

SELECT * FROM cats WHERE name='egg';

DELETE FROM cats WHERE name='egg';

