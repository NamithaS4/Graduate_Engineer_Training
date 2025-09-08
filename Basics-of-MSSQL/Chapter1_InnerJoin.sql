USE Namitha

--Create table named as users

CREATE TABLE users (
    userID INT PRIMARY KEY,
    emailID VARCHAR(20) UNIQUE,
    names VARCHAR(50)
);

--Create table named as books

CREATE TABLE books (
    ProductID INT PRIMARY KEY,
    Title VARCHAR(50),
	Price FLOAT
);

--Create table named as orders and created foreign key

CREATE TABLE orders(
    order_no INT PRIMARY KEY,
	userID INTEGER,
	ProductID INTEGER,
	FOREIGN KEY (userID) REFERENCES users(userID),
	FOREIGN KEY (ProductID) REFERENCES books(ProductID)
);

INSERT INTO users(userID, emailID, names) VALUES
(1, 'callmebhai@gmail.com', 'Gopal Bhai'),
(2, 'toxicmanji@gmail.com', 'Manjit'),
(3, 'kalajadu@gmail.com', 'Soumyadeeep'),
(4, 'vimalpan@gmail.com', 'JaiSai'),
(5, 'ghostlaugh@gmail.com', 'snamitha');

INSERT INTO books (ProductID, Title, Price) VALUES
(101, 'MSSQL', 100.00),
(102, 'Half Girlfriend', 699.00),
(103, 'Black Magic', 700.00),
(104, 'Marfa', 2000.00),
(105, 'How to Laugh', 2001.99);

INSERT INTO orders(order_no, userID, ProductID) VALUES
(401, 1, 101),
(402, 2, 103),
(403, 2, 102),
(404, 3, 103),
(405, 3, 104),
(406, 4, 102),
(407, 5, 105),
(408, 3, 102);

SELECT * FROM users

SELECT * FROM books

SELECT * FROM orders

--Create inner join

SELECT  o.order_no, u.userID, b.ProductID, u.emailID, u.names, b.Title, b.Price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID;

SELECT  o.order_no, u.userID, b.ProductID, u.emailID, u.names, b.Title, b.Price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID WHERE b.Title = 'Black Magic';

--Used subquery in inner join
SELECT o.order_no, u.userID, b.ProductID, u.emailID, u.names, b.Title, b.Price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID
WHERE b.Price = (SELECT MAX(Price) FROM books);