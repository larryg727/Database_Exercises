USE codeup_test_db;

drop table IF EXISTS album;

CREATE TABLE album(
  id INT UNSIGNED auto_increment primary key,
  artist VARCHAR(100),
  name VARCHAR(100),
  release_date INT,
  sales FLOAT,
  genre VARCHAR(100)
);