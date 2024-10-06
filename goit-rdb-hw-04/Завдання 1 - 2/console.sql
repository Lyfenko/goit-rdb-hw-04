create schema LibraryManagement;

use LibraryManagement;

create table authors (
    author_id INT auto_increment primary key,
    author_name VARCHAR(255)
);

create table genres (
    genre_id INT auto_increment primary key,
    genre_name varchar(255)
);

create table books (
    book_id INT auto_increment primary key,
    title VARCHAR(255),
    publication_year YEAR,
    author_id INT, foreign key(author_id) references authors(author_id),
    genre_id INT, foreign key (genre_id) references genres(genre_id)
);

create table users (
    user_id INT auto_increment primary key,
    user_name VARCHAR(255),
    email VARCHAR(255)
);

create table borrowed_books (
    borrow_id INT auto_increment primary key,
    book_id INT, foreign key(book_id) references books(book_id),
    user_id INT, foreign key(user_id) references users(user_id),
    borrow_date DATE,
    return_date DATE
);

INSERT INTO authors (author_name) VALUES ('J.K. Rowling'), ('George R.R. Martin');

INSERT INTO genres (genre_name) VALUES ('Fantasy'), ('Science Fiction');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ('Harry Potter and the Philosopher\'s Stone', 1997, 1, 1),
       ('A Game of Thrones', 1996, 2, 1);

INSERT INTO users (user_name, email)
VALUES ('lyfenko', 'lyfenko@gmail.com'),
       ('pryimak', 'pryimak@gmail.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2024-01-15', '2024-01-30'),
       (2, 2, '2024-02-01', '2024-02-15');