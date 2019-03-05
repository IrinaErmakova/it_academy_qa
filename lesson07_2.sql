SELECT * FROM Vendors WHERE vend_id = "GG678";
UPDATE Vendors SET vend_city = "pmars", vend_address = "estimatw" WHERE vend_id ="GG678";
SELECT * FROM Vendors;
SELECT * FROM Products;
SELECT * FROM Products WHERE vend_id = " ZZ778";
UPDATE Products SET prod_id = 'IRK85' WHERE vend_id = "ZZ778";
UPDATE Products SET prod_id = CONCAT(prod_id, "newvalue") WHERE vend_id = "ZZ778";