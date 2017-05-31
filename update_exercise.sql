use codeup_test_db;

select 'All albums' as '';
SELECT name, sales from album;
update album SET sales = sales * 10;
SELECT name, sales from album;

SELECT 'All albums released before 1980' as '';
SELECT name, release_date from album where release_date < 1980;
update album set release_date = release_date - 100 where release_date < 1980;
SELECT name, release_date from album where release_date < 1980;

select  'All albums by Michael Jackson' as'';
SELECT artist, name from album where artist = 'Michael Jackson';
update album set artist = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT artist, name from album where artist = 'Peter Jackson';
