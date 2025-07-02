UPDATE customer
SET
    first_name = 'Andres'
WHERE
    customer_id = 600;

SELECT
    customer_id,
    first_name,
    last_name,
    email
FROM
    customer
WHERE
    customer_id = 600;