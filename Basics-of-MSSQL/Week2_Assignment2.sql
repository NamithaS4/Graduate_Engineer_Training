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
(408, 5, 102);


SELECT * FROM users

SELECT * FROM books

SELECT * FROM orders

-- Find all the books all the users and all the order

SELECT  o.order_no, u.userID, b.ProductID, u.emailID, u.names, b.Title, b.Price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID;

--Find all orders

SELECT * FROM orders




-- Find particular user who has ordered these books
 select *  from  users u1 
		inner join orders u2 on u1.userID=u2.userID
			inner join books u3 on u3.productID= u2.ProductID 
				where
					u3.title in ('black magic','HALF girlfriend')


--Find books a user has ordered
SELECT b.Title, b.Price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID
WHERE u.names = 'snamitha';


--Find total price of books a user has ordered

SELECT u.names, SUM(b.Price) AS total_price
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID
WHERE u.names = 'snamitha'
GROUP BY u.names;

--Find the most valuable user

SELECT u.userID, u.names, SUM(b.Price) AS total_spent
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID
GROUP BY u.userID, u.names
ORDER BY total_spent DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;


--Find the range of books from high to low (price order)

SELECT Title, Price
FROM books
ORDER BY Price DESC;

--Find the Highest price book

SELECT Title, Price
FROM books
WHERE Price = (SELECT MAX(Price) FROM books);

--Find the cheapest book

SELECT Title, Price
FROM books
WHERE Price = (SELECT MIN(Price) FROM books);

--Find newly added books
SELECT TOP 1 *
FROM books
ORDER BY ProductID DESC;






