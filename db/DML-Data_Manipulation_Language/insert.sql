INSERT INTO
    public.customer (
        store_id,
        first_name,
        last_name,
        email,
        address_id,
        activebool,
        create_date,
        active
    )
VALUES
    (
        1,
        'Andres',
        'Rodriguez',
        'amrodriguezg@corredores.com',
        5,
        true,
        NOW (),
        1
    );

select
    count(*)
from
    public.customer;