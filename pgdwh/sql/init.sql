CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

INSERT INTO users (name, email)
VALUES ('Iris', 'iris@example.com'),
       ('Tenor', 'tenor@dogmail.com'),
       ('Patrick', 'ptefner@catmail.com');
