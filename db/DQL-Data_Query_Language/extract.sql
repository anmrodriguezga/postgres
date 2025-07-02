SELECT
    extract(
        year
        FROM
            rental_date
    ) AS Año,
    extract(
        month
        FROM
            rental_date
    ) AS Mes,
    extract(
        day
        FROM
            rental_date
    ) AS Dia
FROM
    rental
LIMIT
    10;