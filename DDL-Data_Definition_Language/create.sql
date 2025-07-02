CREATE TABLE
    review (
        review_id serial PRIMARY KEY,
        film_id int,
        customer_id int,
        rating int check (
            rating betw een 1
            AND 5
        ),
        review_text text,
        review_date timestamp DEFAULT current_timestamp
    );

SELECT
    *
FROM
    public.review;