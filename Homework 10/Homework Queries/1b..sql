ALTER TABLE actor
ADD COLUMN first_last VARCHAR(255);

UPDATE actor
SET first_name = LOWER(first_name);

UPDATE actor
SET last_name = LOWER(last_name);

UPDATE actor
SET first_last = CONCAT(CONCAT(LEFT(UPPER(first_name),1), SUBSTRING(first_name,2,LENGTH(first_name))), ' ',CONCAT(LEFT(UPPER(last_name),1), SUBSTRING(last_name,2,LENGTH(last_name))));

SELECT *
FROM actor