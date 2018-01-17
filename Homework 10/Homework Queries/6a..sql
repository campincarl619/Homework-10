SELECT first_name,last_name, address
FROM staff LEFT JOIN address
ON staff.address_id = address.address_id