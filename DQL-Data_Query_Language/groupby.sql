SELECT
    customer_id,
    count(rental_id) AS total_rentas
FROM
    public.rental
GROUP BY
    customer_id;