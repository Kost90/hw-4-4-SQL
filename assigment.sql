CREATE DATABASE ecommerce;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email text UNIQUE,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
);

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
);

CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    user_id INT,
    countries_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (countries_id) REFERENCES countries(id),
);

INSERT INTO users (username, password, email, firstname, lastname) VALUES ('konst', '12345', 'kostdonc90@gmail.com', 'Kostiantyn', 'Dontsov');
INSERT INTO users (username, password, email, firstname, lastname) VALUES ('mike', '77777', 'MikeAsh0@gmail.com', 'Michael', 'Ashadze');

INSERT INTO countries (name) VALUES ('Ukraine');
INSERT INTO countries (name) VALUES ('United Kingdom');
INSERT INTO countries (name) VALUES ('USA');

UPDATE addresses SET user_id = 1, countries_id = 1;
UPDATE addresses SET user_id = 2, countries_id = 1 WHERE user_id IS NULL;
UPDATE addresses SET user_id = 2, countries_id = 3 WHERE user_id IS NULL;

SELECT * FROM countries;
SELECT email FROM users;
SELECT * FROM users WHERE firstname LIKE '%e%';
SELECT * FROM countries WHERE user_id = 2;
