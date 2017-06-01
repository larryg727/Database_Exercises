use codeup_test_db;

SELECT 'Albums released after 1991' AS '';
DELETE from album where release_date > 1991;
SELECT name, artist, release_date from album where release_date > 1991;

SELECT 'Albums with the genre disco' AS '';
DELETE from album where genre = 'disco';
SELECT artist, name, genre from album where genre = 'disco';

SELECT 'Albums by Whitney Houston' AS '';
DELETE from album where artist = 'Whitney Houston';
SELECT artist, name from album where artist = 'Whitney Houston';
