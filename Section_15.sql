USE section14;

SELECT * FROM users 
ORDER BY created_at
LIMIT 5;

SELECT dayname(created_at) AS dayname, COUNT(*) AS total_created
FROM users
GROUP BY dayname(created_at);

SELECT username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;


SELECT photos.id, photos.user_id ,users.username,COUNT(*) AS likes_qty
FROM photos
INNER JOIN likes ON photos.id = likes.photo_id
INNER JOIN users ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY likes_qty DESC
LIMIT 1;

SELECT 
	(SELECT COUNT(*) FROM photos) 
		/ 
	(SELECT COUNT(*) FROM users);
    
SELECT tags.tag_name,COUNT(photo_tags.tag_id) AS tag_qty FROM photo_tags
INNER JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY photo_tags.tag_id
ORDER BY tag_qty DESC
LIMIT 5;

SELECT users.username,users.id, COUNT(*) AS total_likes FROM users
INNER JOIN likes ON users.id = likes.user_id
GROUP BY users.id
HAVING total_likes = (SELECT COUNT(*) FROM photos);
-- having is the same as where but we can use it for groups



