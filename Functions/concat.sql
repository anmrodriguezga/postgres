SELECT
    concat (first_name, ' ', last_name) as nombre_completo,
    email
from
    customer
limit
    5;

select
    first_name || ' ' || last_name as nombre_completo,
    email
from
    customer
limit
    5;