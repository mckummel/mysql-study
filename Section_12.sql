CREATE DATABASE section12;

USE section12;

-- foreign keys

CREATE TABLE customers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(100)
);

CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);