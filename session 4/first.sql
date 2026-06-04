SELECT u.user_id, u.name 
FROM users AS u 
LEFT JOIN MovieRating AS m 
ON u.user_id=m.user_id 
GROUP BY u.user_id 
ORDER BY COUNT(*) DESC, u.name;