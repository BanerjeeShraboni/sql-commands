-- Question 1: --
-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences. --
-- Answer of 1st: --
-- Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables --


-- Question 2: ---
-- List all details of actors. --
-- Answer of 2nd: --
SELECT * FROM actor;


-- Question 3: --
-- List all customer information from DB. --
-- Answer of 3rd: --
SELECT * FROM customer;


-- Question 4: --
-- List different countries. --
-- Answer of 4th: --
SELECT DISTINCT country FROM country ;


-- Question 5: --
-- Display all active customers. --
-- Answer of 5th: --
SELECT * FROM customer WHERE active = 1;


-- Question 6: --
-- List of all rental IDs for customer with ID 1. --
-- Answer of 6th: --
SELECT rental_id FROM rental WHERE customer_id = 1;


-- Question 7: --
-- Display all the films whose rental duration is greater than 5. --
-- Answer of 7th: --
SELECT film_id, title
FROM film
WHERE rental_duration > 5;


-- Question 8:--
-- List the total number of films whose replacement cost is greater than $15 and less than $20. --
-- Answer of 8th: --
SELECT COUNT(*)
FROM film
WHERE replacement_cost > 15 AND replacement_cost < 20;


-- Question 9: --
-- Display the count of unique first names of actors. --
-- Answer of 9th: --
SELECT COUNT(DISTINCT first_name)
FROM actor;


-- Question 10: --
-- Display the first 10 records from the customer table. --
-- Answer of 10th:--
SELECT * FROM customer LIMIT 10;


-- Question 11: --
-- Display the first 3 records from the customer table whose first name starts with ‘b’. --
-- Answer of 11th: --
SELECT *
FROM customer
WHERE first_name LIKE 'b%'
LIMIT 3;


-- Question 12: --
-- Display the names of the first 5 movies which are rated as ‘G’. --
-- Answer of 12th: --
SELECT title
FROM film
WHERE rating = 'G'
LIMIT 5;

-- Question 13: --
-- Find all customers whose first name starts with "a" . --
-- Answer of 13th: --
SELECT *
FROM customer
WHERE first_name LIKE "a%";


-- Question 14: --
-- Find all customers whose first name ends with "a". --
-- Answer of 14th: --
SELECT *
FROM customer
WHERE first_name LIKE "%a";


-- Question 15: --
-- Display the list of first 4 cities which start and end with ‘a’. --
-- Answer of 15th: --
SELECT city
FROM city
WHERE city LIKE 'a%%a' LIMIT 4;


-- Question 16: --
-- Find all customers whose first name have "NI" in any position. --
-- Answer of 16th: --
SELECT *
FROM customer
WHERE first_name LIKE '%ni%';


-- Question 17: --
-- Find all customers whose first name have "r" in the second position.--
-- Answer of 17th:--
SELECT *
FROM customer
WHERE first_name LIKE '_r%';


-- Question 18: --
-- Find all customers whose first name starts with "a" and are at least 5 characters in length. --
-- Answer of 18th: --
SELECT *
FROM customer
WHERE first_name LIKE 'a%' AND LENGTH(first_name) >= 5;


-- Question 19: --
-- Find all customers whose first name starts with "a" and ends with "o". --
-- Answer of 19th: --
SELECT *
FROM customer
WHERE first_name LIKE 'a%o';


-- Question 20: --
-- Get the films with pg and pg-13 rating using IN operator. --
-- Answer of 20th: --
SELECT title
FROM film
WHERE rating IN ('PG', 'PG-13');


-- Question 21: --
-- Get the films with length between 50 to 100 using between operator. --
-- Answer of 21st: --
SELECT *
FROM film
WHERE length BETWEEN 50 AND 100;


-- Question 22:--
-- Get the top 50 actors using limit operator. --
-- Answer of 22nd: --
SELECT *
FROM actor
LIMIT 50;


-- Question 23: --
-- Get the distinct films id from inventory table. --
-- Answer of 23rd: --
SELECT DISTINCT film_id FROM inventory ;