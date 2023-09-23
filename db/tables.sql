CREATE TABLE books(
   id serial PRIMARY KEY,
   title VARCHAR (50) UNIQUE NOT NULL,
   author VARCHAR (50) NOT NULL
);