SELECT title, name
FROM film JOIN language
ON film.language_id = language.language_id
WHERE name = "English" AND (title LIKE "K%" OR title LIKE "Q%");