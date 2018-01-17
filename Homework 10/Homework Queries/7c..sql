SELECT first_name,last_name,address, city, country
FROM city 
JOIN country
ON city.country_id = country.country_id
JOIN  address
ON city.city_id = address.city_id
JOIN customer
ON address.address_id = customer.address_id
WHERE country = "Canada"