use codeup_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
    VALUES
      ('Homer', 'homer@simpsons.com,', null),
      ('Mark', 'mark@twain.com', 2),
      ('Javi', 'javi@theplace.com', 2),
      ('july', 'july@romeo.com',  2);

select *
FROM users
JOIN roles ON users.role_id = roles.id;

select *
FROM users
  left JOIN roles ON users.role_id = roles.id;

select *
FROM users
  right JOIN roles ON users.role_id = roles.id;

select roles.name, count(*)
from users
JOIN roles ON users.role_id = roles.id
GROUp BY roles.name;

select roles.name, count(*)
from users
 left JOIN roles ON users.role_id = roles.id
GROUp BY roles.name;



