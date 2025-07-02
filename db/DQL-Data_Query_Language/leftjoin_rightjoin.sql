SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    rental.rental_date
FROM
    rental
    RIGHT JOIN customer ON rental.customer_id = customer.customer_id
LIMIT
    5;

SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    rental.rental_date
FROM
    rental
    LEFT JOIN customer ON rental.customer_id = customer.customer_id
LIMIT
    5;