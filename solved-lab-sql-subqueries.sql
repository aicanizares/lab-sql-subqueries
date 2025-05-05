# 1. Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
SELECT COUNT(DISTINCT inventory_id) AS number_of_copies
FROM inventory
INNER JOIN film
ON inventory.film_id = film.film_id
WHERE title = "Hunchback Impossible";

# 2. List all films whose length is longer than the average length of all the films in the Sakila database.
# END RESULT
SELECT title
FROM film
WHERE length > ( SELECT AVG(LENGTH) as avg_length
					from film ) ;

# LIST ALL FILMS
SELECT title
FROM film;

# LIST ALL FILMS WHOSE LENGTH IS LONGER THAN 120 MIN.
SELECT title
FROM film
WHERE length > 120;

# RETRIEVE the average length of all the films in the Sakila database.
SELECT AVG(LENGTH) as avg_length
from film;

#3. Use a subquery to display all actors who appear in the film "Alone Trip".
SELECT first_name, last_name
FROM actor
INNER JOIN film_actor
USING (actor_id)
WHERE film_id = ( SELECT film_id
					FROM film
					WHERE title = "Alone Trip" );