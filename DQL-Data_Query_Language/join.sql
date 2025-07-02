SELECT
    customer.first_name,
    rental.rental_date
FROM
    rental
    JOIN customer ON rental.customer_id = customer.customer_id
LIMIT
    10;