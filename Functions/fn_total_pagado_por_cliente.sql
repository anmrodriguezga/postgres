CREATE OR REPLACE FUNCTION fn_total_pagado_por_cliente(
    cliente_id INT
) RETURNS NUMERIC LANGUAGE plpgsql AS $$

DECLARE total NUMERIC;
BEGIN
    SELECT sum(p.amount) INTO total
    FROM payment p
    WHERE p.customer_id = cliente_id;

    RETURN coalesce(total, 0);
END;
$$;