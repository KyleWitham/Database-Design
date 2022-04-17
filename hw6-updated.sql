CREATE DATABASE Store2;
USE Store2;

CREATE TABLE Customers(
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  firstname varchar(20),
  lastname varchar(20),
  company varchar(20),
  PRIMARY KEY (id)
);

CREATE TABLE Orders(
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  cost int,
  customerId int,
  PRIMARY KEY (id),
  FOREIGN KEY (customerId) REFERENCES Customers(id)
);

CREATE TABLE Products(
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  product varchar(20),
  PRIMARY KEY (id)
);

CREATE TABLE Product_Order_Association(
  id int NOT NULL AUTO_INCREMENT UNIQUE,
  orderId int NOT NULL,
  productId int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (orderId) REFERENCES Orders(id),
  FOREIGN KEY (productId) REFERENCES Products(id)
);

INSERT INTO Customers (firstname, lastname, company) VALUES ('Kyle', 'Witham', 'RWU');
INSERT INTO Customers (firstname, lastname, company) VALUES ('Roderick', 'Ramirez', 'RWU');
INSERT INTO Customers (firstname, lastname, company) VALUES ('Rudy', 'DeSanti', 'RWU');

INSERT INTO Orders (cost, customerId) VALUES (10, 1);
INSERT INTO Orders (cost, customerId) VALUES (15, 2);
INSERT INTO Orders (cost, customerId) VALUES (20, 2);

INSERT INTO Products (product) VALUES ('Shoes');
INSERT INTO Products (product) VALUES ('Mouse');
INSERT INTO Products (product) VALUES ('Keyboard');

INSERT INTO Product_Order_Association (orderId, productId) VALUES (1, 1);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (2, 2);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (2, 3);

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Product_Order_Association;

SELECT (firstname) FROM Customers;
SELECT (cost) FROM Orders;
SELECT (product) FROM Products;
SELECT (orderId) FROM Product_Order_Association;


