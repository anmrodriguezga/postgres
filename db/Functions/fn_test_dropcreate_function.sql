CREATE OR REPLACE FUNCTION fn_test_dropcreate_function()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    DROP TABLE IF EXISTS aaa;

    CREATE TABLE aaa (
        bbb char(5) CONSTRAINT firstkey PRIMARY KEY,
        ccc char(5)
    );

    CREATE TABLE ddd (
        eee char(5) CONSTRAINT secondkey PRIMARY KEY,
        fff char(5)
    );
END;
$$;