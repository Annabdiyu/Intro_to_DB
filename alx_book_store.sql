-- Active: 1729411867836@@127.0.0.1@3306@alx_book_store
USE alx_book_store

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE Table Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE Table Books(
    book_id INT PRIMARY key,
    title VARCHAR(130),
    price Double,
    publication_date DATE,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE Table Customers(
    customer_id INT PRIMARY key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE Table Orders(
    order_id INT PRIMARY key,
    order_date DATE,
    customer_id INT,
    FOREIGN key (customer_id) REFERENCES Customers(customer_id)
);


CREATE Table Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN key (order_id) REFERENCES Orders(order_id),
    FOREIGN key (book_id) REFERENCES Books(book_id)
);
