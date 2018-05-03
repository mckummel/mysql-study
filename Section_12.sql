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

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
  
    
SELECT * FROM customers WHERE id = 1;

SELECT * FROM orders WHERE customer_id =
(
	SELECT id FROM customers
	WHERE last_name='George'
);

-- cross join

SELECT * FROM customers,orders;

-- implicit inner join

SELECT * FROM customers,orders 
WHERE customers.id = orders.customer_id;

SELECT first_name, last_name,order_date, amount 
FROM customers,orders
WHERE customers.id = orders.customer_id;

-- explicit inner join

SELECT * 
FROM customers JOIN orders
ON customers.id = orders.customer_id;

SELECT first_name, last_name,order_date, amount 
FROM customers 
JOIN orders ON customers.id = orders.customer_id;

-- left join

SELECT *
FROM customers 
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name,order_date, amount 
FROM customers 
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, IFNULL(SUM(amount),0) AS total_spent
FROM customers 
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id;

-- right join
SELECT *
FROM customers 
RIGHT JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, IFNULL(SUM(amount),0) AS total_spent
FROM customers 
RIGHT JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id;
