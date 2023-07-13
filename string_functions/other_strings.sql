-- INSERT: insert substring into another string at any position
SELECT
INSERT
    ('Hello Bobby', 6, 0, 'There');

-- returns 'HelloThere Bobby'
-- LEFT/RIGHT: get leftmost/rightmost cahracters from string
SELECT
    LEFT('omghahalol!', 3);

SELECT
    RIGHT('omghahalol!', 4);

-- get initials of authors
SELECT
    CONCAT(
        LEFT(author_fname, 1),
        '.',
        LEFT(author_lname, 1)
    ) AS author_initials
FROM
    books;

-- REPEAT: take a string and repeat it a given numbers of times
SELECT
    REPEAT('ha', 4);

-- TRIM: remove leading and trailing spaces
SELECT
    TRIM('   boston  ');

-- can also specifiy certain charaacters to remove
SELECT
    TRIM(
        LEADING '.'
        FROM
            '....your mom...'
    );

SELECT
    TRIM(
        TRAILING '.'
        FROM
            '....your mom...'
    );

SELECT
    TRIM(
        BOTH '.'
        FROM
            '....your mom...'
    );