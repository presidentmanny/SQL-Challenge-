SELECT * from film;
SELECT * from inventory;

CREATE VIEW "Title_Count" AS
SELECT f.title, i.inventory_id
FROM film f, inventory i
WHERE f.film_id=i.film_id AND i.inventory_id = 7;					  

SELECT * from "Title_Count";