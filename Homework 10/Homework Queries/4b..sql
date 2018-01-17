SELECT last_name, COUNT(last_name)
FROM ACTOR
GROUP BY last_name
HAVING COUNT(last_name) > 1;