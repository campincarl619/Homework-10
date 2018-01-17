ALTER TABLE actor
ADD COLUMN middle_name VARCHAR(255) AFTER first_name;

SELECT *
FROM actor;