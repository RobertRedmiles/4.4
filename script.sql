-- CREATE DATABASE ecommerce;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS countries;



CREATE TABLE users (
    id SERIAL NOT NULL,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    firstName TEXT,
    lastName TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE countries (
    id SERIAL NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO users(name, username, email, password, firstName, lastName) VALUES ('Jordan', 'jDubs', 'jDubs@yahoo.com', 'password', 'jordan', 'dubs');
INSERT INTO users(name, username, email, password, firstName, lastName) VALUES ('Robert', 'rDubs', 'rDubs@yahoo.com', 'password', 'robert', 'dubs');
INSERT INTO countries(name) VALUES ('USA');
INSERT INTO countries(name) VALUES ('Russia');
INSERT INTO countries(name) VALUES ('North Korea');

CREATE TABLE addresses (
    id SERIAL NOT NULL,
    user_id INTEGER REFERENCES users(id),
    country_id INTEGER REFERENCES countries(id),
    PRIMARY KEY (id)
);

INSERT INTO addresses(user_id, country_id) VALUES (1, 1);
INSERT INTO addresses(user_id, country_id) VALUES (2, 1);
INSERT INTO addresses(user_id, country_id) VALUES (2, 3);


SELECT * FROM countries;

SELECT email FROM users;

SELECT * FROM users WHERE firstName LIKE '%e%';

SELECT * FROM addresses WHERE user_id = 2;