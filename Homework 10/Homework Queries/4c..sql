UPDATE actor
SET first_name = "harpo", first_last = "Harpo Williams"
WHERE first_name = "groucho" AND last_name = "williams";

SELECT*
FROM actor
WHERE first_name = "harpo";	