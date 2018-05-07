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



