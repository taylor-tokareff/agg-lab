-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10


SELECT title, COUNT(*)
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film on film.film_id = inventory.film_id
GROUP BY film.film_id
ORDER BY COUNT DESC
LIMIT 10