CREATE VIEW top_genres AS
SELECT name, COUNT(rental.inventory_id) AS 'Rental Quantity', amount*COUNT(rental.inventory_id) AS 'Profit'
FROM category
JOIN film_category
ON category.category_id = film_category.category_id
JOIN inventory
ON film_category.film_id = inventory.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
JOIN payment
ON rental.rental_id = payment.rental_id
GROUP BY category.name
ORDER BY amount*COUNT(rental.inventory_id) DESC
LIMIT 5