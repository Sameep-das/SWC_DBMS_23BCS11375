SELECT m.title FROM movies AS m
LEFT JOIN movierating AS mr
ON m.movie_id=mr.movie_id
WHERE EXTRACT(MONTH FROM mr.created_at)=02
AND EXTRACT(YEAR FROM mr.created_at)=2020
GROUP BY m.movie_id
ORDER BY AVG(mr.rating) DESC, m.title;