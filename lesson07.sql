SELECT COUNT(vend_country) FROM Vendors;
SELECT COUNT(*) FROM Orders;
SELECT * FROM Customers ORDER BY cust_id DESC;
SELECT * FROM OrderItems order by item_price DESC;
SELECT * FROM OrderItems order by quantity DESC;

SELECT * FROM OrderItems WHERE prod_id = "BNBG03" AND item_price > "2.49";

SELECT * FROM OrderItems WHERE prod_id = "BNBG03" AND order_item> "1";
SELECT COUNT(*) FROM OrderItems WHERE quantity > "5" AND order_num != "2005";

SELECT * FROM OrderItems WHERE
item_price = 4.49 OR
item_price > 5;

SELECT * FROM OrderItems WHERE quantity IN (10, 20);

SELECT * FROM OrderItems WHERE quantity NOT IN (10, 20);

SELECT * FROM Customers WHERE cust_email IS NULL;

SELECT * FROM Customers WHERE cust_email IS NOT NULL;

SELECT * FROM OrderItems WHERE prod_iD LIKE("BN%");

SELECT * FROM OrderItems WHERE prod_id LIKE("%1");

SELECT * FROM OrderItems WHERE quantity LIKE("%5");

SELECT * FROM OrderItems WHERE prod_id LIKE("_r%");

SELECT COUNT(*) FROM Products WHERE vend_id = "DDL";

SELECT prod_price, vend_id, COUNT(*) FROM Products group by prod_price;

SELECT order_num, order_item, COUNT(*) FROM OrderItems GROUP BY order_item;

SELECT vend_id, COUNT(*) FROM Products 
GROUP BY vend_id
HAVING COUNT(*) > 1;

SELECT cust_name, cust_email, order_date
FROM Orders, Customers
WHERE Orders.cust_id = Customers. cust_id;

SELECT cust_name, cust_email, order_date
FROM Orders INNER JOIN Customers
ON Orders.cust_id = Customers.cust_id;

select * from Vendors;
INSERT INTO Vendors (vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_country)
VALUES ("GG678", "draft", "draft fake", "samara fake", "br fake", "489", "ru fake");

SELECT * FROM Vendors WHERE vend_id = "GG678";
UPDATE Vendors SET vend_city = "pmark", vend_address = "estimate" WHERE vend_id ="GG678";
