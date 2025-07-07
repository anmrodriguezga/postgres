CREATE OR REPLACE PROCEDURE sp_test_drpcreate_procedure() 
LANGUAGE SQL 
AS $$
    DROP TABLE IF EXISTS aaa;
    CREATE TABLE aaa (
        bbb char(5) CONSTRAINT firstkey PRIMARY KEY
    );
$$;
