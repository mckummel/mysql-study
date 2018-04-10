CREATE DATABASE company;

USE company;

CREATE TABLE Employees
(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    last_name varchar(100) NOT NULL,
    first_name varchar(100) NOT NULL,
    middle_name varchar(100),
    age INT NOT NULL,
    current_status varchar(100) NOT NULL DEFAULT 'Employed'
);

DESC Employees;

INSERT INTO Employees(first_name,middle_name,last_name,age)
	VALUES('Test1','Middletest','LastTest',26);
    
INSERT INTO Employees(first_name,middle_name,last_name,age)
	VALUES('Test2','Middletest2','LastTest2',36);

SELECT * FROM Employees;