CREATE TABLE inventory
(
	item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

SELECT current_time();

SELECT current_date();

SELECT dayofweek(NOW());

SELECT DATE_FORMAT(NOW(),'%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');

CREATE TABLE tweets
(
	content VARCHAR(100),
    username VARCHAR(30),
    created_at TIMESTAMP DEFAULT NOW()
);