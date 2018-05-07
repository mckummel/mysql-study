CREATE DATABASE section16;

USE section16;

CREATE TABLE users
(
	email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email) 
VALUES ('Katie555@yahoow.com'),('Tunde555@geemail.com');

SELECT * FROM users;