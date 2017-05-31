USE codeup_test_db;


select 'Albums by Pink Floyd' as 'Description'\G
SELECT name from album where artist = 'Pink Floyd';

SELECT 'Year Sgt Pepper''s Lonely Hearts Club Band was released' as 'Description'\G
Select name, release_date from album where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'Genre for Nevermind' as 'Description'\G
select name, genre from album where name = 'Nevermind';

select 'Albums released in the 1990''s' as 'Description'\G
select artist, name, release_date from album where release_date between '1990' and '1999';

select 'Albums that had less than 20 million certified sales' as 'Description'\G
select artist, name, sales from album where sales < '20';

select 'Albums in the rock genre' as 'Desctiption'\G
select artist, name, genre from album where genre like '%rock%';

