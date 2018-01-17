SELECT title, COUNT(actor_id) AS 'ActorCount'
FROM film INNER JOIN film_actor
ON film.film_id = film_actor.film_id
GROUP BY title