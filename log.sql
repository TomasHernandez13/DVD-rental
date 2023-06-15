INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active) 
VALUES (600, 1, 'Juan', 'Vergara', 'juan.vergara@hotmail.com', 6, true, '2006-02-14', '2013-05-26 14:50:30.669', 0);

UPDATE customer SET email = 'marysmt@gamil.com' WHERE customer_id = 1;

DELETE FROM customer WHERE customer_id = 3;

DELETE FROM payment WHERE customer_id = 3;

DELETE FROM rental WHERE customer_id = 3;


INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture)
VALUES (3, 'Jason', 'pollock', 6, 'jason.pollock@outlook.com', 3, true, 'json', 'jason24839', '2006-05-17 16:13:11.60345', NULL::bytea)

UPDATE staff SET username = 'mickey' WHERE staff_id = 1;

DELETE FROM staff WHERE staff_id = 2;

DELETE FROM payment WHERE staff_id = 2;

DELETE FROM rental WHERE staff_id = 2;

ALTER TABLE "public"."payment" ALTER COLUMN "rental_id" DROP NOT NULL;

DELETE FROM "public"."rental" WHERE staff_id = 2;

DELETE FROM "public"."store" WHERE manager_staff_id = 2;


INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES (201, 'Joe', 'Wiston', '2013-05-29 14:47:57.62')

UPDATE actor SET first_name = 'Antonia' WHERE actor_id = 1;

DELETE FROM actor WHERE actor_id = 2;

DELETE FROM film_actor WHERE actor_id = 2;



SELECT rental.*, customer.*
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE EXTRACT(YEAR FROM rental.rental_date) = 2005 AND EXTRACT(MONTH FROM rental.rental_date) = 5;



SELECT payment_id, payment_date, amount FROM payment;



SELECT * FROM film
WHERE release_year = 2006 AND rental_rate > 4.0;



SELECT pg_typeof(actor_id),
pg_typeof(first_name),
pg_typeof(last_name),
pg_typeof(last_update) FROM public.actor LIMIT 1;

SELECT is_nullable
FROM information_schema.columns
WHERE table_name = 'store'
AND column_name = 'last_update';