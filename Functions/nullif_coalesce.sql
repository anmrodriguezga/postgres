SELECT
    film_id,
    title,
    coalesce(nullif(replacement_cost, 29.99), 100) AS costo_reemplazo
FROM
    film
ORDER BY
    replacement_c ost DESC;