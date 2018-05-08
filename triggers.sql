CREATE DATABASE trigger_demo;

USE trigger_demo;

CREATE TABLE users
(
	username VARCHAR(100),
    age INT
);

INSERT INTO users(username,age) VALUE("bobby",23);
INSERT INTO users(username,age) VALUE("test",55);

DELIMITER $$

CREATE TRIGGER must_be_adult
	BEFORE INSERT ON users FOR EACH ROW
	BEGIN
		IF NEW.age < 18
        THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Must be an adult!';
		END IF;
	END;

$$

DELIMITER ;

INSERT INTO users(username,age) VALUE("test2",17);
INSERT INTO users(username,age) VALUE("test3",21);

-- preventing self follows

USE section14;

DELIMITER $$

CREATE TRIGGER prevent_self_follow
	BEFORE INSERT ON follows FOR EACH ROW
    BEGIN 
		IF NEW.follower_id = NEW.followee_id
		THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'NO SELF FOLLOWS!';
    
    END IF;
    END;

$$

DELIMITER ;

INSERT INTO follows(follower_id,followee_id) VALUES (3,3);
INSERT INTO follows(follower_id,followee_id) VALUES (10,10);
INSERT INTO follows(follower_id,followee_id) VALUES (7,2);

-- logging triggers

CREATE TABLE unfollows
(
	follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

DELIMITER $$

CREATE TRIGGER unfollow_log
	AFTER DELETE ON follows FOR EACH ROW
	BEGIN
		INSERT INTO unfollows(follower_id,followee_id) VALUE(OLD.follower_id, OLD.followee_id);
    END;

$$

DELIMITER ;

DELETE FROM follows WHERE follower_id = 7 AND  followee_id = 2;

SELECT * FROM unfollows;

DELIMITER $$

CREATE TRIGGER unfollow_log2
	AFTER DELETE ON follows FOR EACH ROW
	BEGIN
		INSERT INTO unfollows
		SET follower_id = OLD.follower_id,
			followee_id = OLD.followee_id;
    END;

$$

DELIMITER ;

DROP TRIGGER unfollow_log;

DELETE FROM follows WHERE follower_id = 5 AND  followee_id = 11;

SELECT * FROM unfollows;

SHOW TRIGGERS;