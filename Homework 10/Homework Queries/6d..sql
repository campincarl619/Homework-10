SELECT title, COUNT(inventory.film_id) AS 'NumberCopies'
FROM inventory JOIN film
ON film.film_id = inventory.film_id
WHERE title = "HUNCHBACK IMPOSSIBLE"
GROUP BY title;