SELECT
    first_name,
    last_name,
    'Cliente' AS tipo
FROM
    customer
UNION
SELECT
    first_name,
    last_name,
    'Empleado' AS tipo
FROM
    staff
ORDER BY
    tipo DESC,
    first_name DESC
LIMIT
    10;