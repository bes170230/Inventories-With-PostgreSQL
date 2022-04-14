--Question 1
SELECT first_name, last_name, district
FROM address
JOIN customer
ON customer.address_id = address.address_id
WHERE district = 'Texas'
ORDER BY last_name;

--Question 2
SELECT first_name, last_name, amount
FROM payment
JOIN customer
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
ORDER BY last_name;

--Question 3
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
)
ORDER BY last_name;

--Question 4
SELECT first_name, last_name, country
FROM customer
JOIN address
ON address.address_id = customer.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON country.country_id = city.country_id
WHERE country LIKE 'Nepal';

--Question 5
SELECT first_name, last_name, COUNT(payment_id)
FROM staff
JOIN payment
ON payment.staff_id = staff.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(payment_id) DESC;

--Question 6
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating DESC;

--Question 7
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id, amount
	HAVING amount > 6.99 AND COUNT(amount) = 1
)
ORDER BY last_name;

--Question 8
SELECT COUNT(amount)
FROM payment
WHERE amount = 0