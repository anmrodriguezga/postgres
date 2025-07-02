SELECT
    customer_id,
    count(rental_id) AS total_rentas
FROM
    public.rental
GROUP BY
    customer_id
HAVING
    count(rental_id) > 40
LIMIT
    10;