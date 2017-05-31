USE codeup_test_db;

drop table IF EXISTS album;

CREATE TABLE album(
  id INT UNSIGNED auto_increment primary key,
  artist VARCHAR(100),
  name varchar(100),
  release_date YEAR,
  sales FLOAT,
  genre VARCHAR(100)
);