USE Store2;

INSERT INTO Product_Order_Association (orderId, productId) VALUES (1, 1);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (2, 2);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (2, 3);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (3, 3);
INSERT INTO Product_Order_Association (orderId, productId) VALUES (3, 2);

SELECT * FROM Product_Order_Association;
DELETE FROM Product_Order_Association where orderId = 1;
DELETE FROM Product_Order_Association WHERE orderId in (2, 3);

SELECT Product_Order_Association.orderID, Orders.cost
FROM Product_Order_Association
INNER JOIN Orders on Product_Order_Association.orderId = Orders.id;

SELECT Product_Order_Association.orderID, Orders.cost
FROM Product_Order_Association
INNER JOIN Orders on Product_Order_Association.orderId = Orders.id
WHERE orderId = 2;

SELECT Product_Order_Association.productId, Products.product
FROM Product_Order_Association
INNER JOIN Products on Product_Order_Association.productId = Products.id
WHERE productId = 1;
