SELECT title, rating, name
FROM category
JOIN film_category
ON category.category_id = film_category.category_id
JOIN film
ON film.film_id = film_category.film_id
WHERE name = "Family"