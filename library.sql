CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(255) NOT NULL,
    student_reg VARCHAR(255) NOT NULL
);

CREATE TABLE books(
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_name VARCHAR(255) NOT NULL,
    book_ref VARCHAR(255) NOT NULL,
    book_price VARCHAR(255) NOT NULL,
    author_id INTEGER,

    FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

CREATE TABLE authors(
    author_id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_name VARCHAR(255) NOT NULL
);


CREATE TABLE borrowed_books(
    borrowed_book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL
);


-- insert data to students table
INSERT INTO students (student_name, student_reg) VALUES("Justin", "2020");
INSERT INTO students (student_name, student_reg) VALUES("Ally", "2021");
INSERT INTO students (student_name, student_reg) VALUES("Christy", "2022");


-- insert data to books table
INSERT INTO books (book_name, book_ref, book_price, author_id) VALUES("DarEsSalaam by Night", "1234","200", 1, );
INSERT INTO books (book_name, book_ref, book_price, author_id) VALUES("Inheritance", "1246", "250", 2);
INSERT INTO books (book_name, book_ref, book_price, author_id) VALUES("Born to cry", "5467", "200", 3);
INSERT INTO books (book_name, book_ref, book_price, author_id) VALUES("Asubuhi njema", "7654", "500", 3);



-- insert data to authors table
INSERT INTO authors(author_name) VALUES("John");
INSERT INTO authors(author_name) VALUES("Billy");
INSERT INTO authors(author_name) VALUES("Wandia");

-- insert data to borrowed_books table
INSERT INTO borrowed_books(book_id, student_id) VALUES(1,1);
INSERT INTO borrowed_books(book_id, student_id) VALUES(2,3);


SELECT authors.* FROM books
