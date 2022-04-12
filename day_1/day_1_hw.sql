-- Question 1
-- Answer: 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name	LIKE 'Wahlberg';

-- Question 2
-- Answer: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3
-- Answer: Multiple films tied at 8
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Question 4
-- Answer: 0
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

-- Question 5
-- Answer: 1 - 8040
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

-- Question 6
-- Answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7
-- Answer: 508
SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8
-- Answer: 13
SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Question 9
-- Answer: 3
SELECT amount, COUNT(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(payment_id) > 250;

-- Question 10
-- Answer: 5; PG-13
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
ORDER BY rating DESC;
