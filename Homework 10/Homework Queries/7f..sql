SELECT store.store_id, address,  COUNT(rental.inventory_id) AS 'Rental Quantity', rental_rate*COUNT(rental.inventory_id) AS 'Profit'
FROM store
JOIN address
ON store.address_id = address.address_id
JOIN inventory
ON inventory.store_id = store.store_id
JOIN film
ON film.film_id = inventory.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
GROUP BY address
ORDER BY store.store_id ASC