SELECT title, rating, COUNT(rental.inventory_id) AS 'Rental Quantity'
FROM rental
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
JOIN film
ON inventory.film_id = film.film_id
GROUP BY title
ORDER BY COUNT(rental.inventory_id) DESC