SELECT
    rental_id,
    round(
        extract(
            epoch
            FROM
                age (return_date, rental_date)
        ) / 86400,
        0
    ) AS dias_rentados
FROM
    rental
LIMIT
    10;