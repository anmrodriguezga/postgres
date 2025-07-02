SELECT
    *
FROM
    public.payment
WHERE
    amount BETWEEN 5 AND 8
LIMIT
    10;