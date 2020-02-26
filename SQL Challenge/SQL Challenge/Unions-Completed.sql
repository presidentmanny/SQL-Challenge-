CREATE VIEW "all parties" AS
SELECT first_name, last_name FROM actor
UNION
SELECT first_name, last_name FROM staff
UNION
SELECT first_name, last_name FROM customer;

SELECT * FROM "all parties"

SELECT customer_id
FROM customer
WHERE city = 'London'
UNION
SELECT id
FROM customer_list
WHERE city = 'London'

SELECT customer_id
FROM customer
WHERE city = 'London'
UNION ALL
SELECT id
FROM customer_list
WHERE city = 'London'


