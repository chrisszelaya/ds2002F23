-- ------------------------------------------------------------------
-- 0). First, How Many Rows are in the Products Table?
-- ------------------------------------------------------------------

SELECT count(*) 
FROM products;


-- ------------------------------------------------------------------
-- 1). Product Name and Unit/Quantity
-- ------------------------------------------------------------------

SELECT product_name as 'Product Name' , quantity_per_unit as 'Unit/Quantity' 
FROM products;


-- ------------------------------------------------------------------
-- 2). Product ID and Name of Current Products
-- ------------------------------------------------------------------

SELECT id as 'Product ID' , product_name as 'Product Name' 
FROM products 
WHERE discontinued = 1;


-- ------------------------------------------------------------------
-- 3). Product ID and Name of Discontinued Products
-- ------------------------------------------------------------------

SELECT id as 'Product ID' , product_name as 'Product Name' 
FROM products 
WHERE discontinued = 0;



-- ------------------------------------------------------------------
-- 4). Name & List Price of Most & Least Expensive Products
-- ------------------------------------------------------------------

-- Most Expensive 
SELECT product_name , list_price 
FROM products 
ORDER BY list_price DESC 
LIMIT 1;
-- Least Expensive 
SELECT product_name , list_price 
FROM products 
ORDER BY list_price 
LIMIT 1;


-- ------------------------------------------------------------------
-- 5). Product ID, Name & List Price Costing Less Than $20
-- ------------------------------------------------------------------

SELECT id as 'Product ID', product_name as 'Name' , list_price as 'Price' 
FROM products 
WHERE list_price < 20;


-- ------------------------------------------------------------------
-- 6). Product ID, Name & List Price Costing Between $15 and $20
-- ------------------------------------------------------------------

SELECT id as 'Product ID', product_name as 'Name' , list_price as 'Price' 
FROM products 
WHERE list_price >= 15 AND list_price <= 20;



-- ------------------------------------------------------------------
-- 7). Product Name & List Price Costing Above Average List Price
-- ------------------------------------------------------------------

SELECT product_name as 'Name' , list_price as 'Price'
FROM products 
WHERE list_price > (SELECT AVG(list_price) FROM products);


-- ------------------------------------------------------------------
-- 8). Product Name & List Price of 10 Most Expensive Products 
-- ------------------------------------------------------------------

SELECT product_name as 'Name' , list_price as 'Price' 
FROM products 
ORDER BY list_price DESC
LIMIT 10;


-- ------------------------------------------------------------------ 
-- 9). Count of Current and Discontinued Products 
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- 10). Product Name, Units on Order and Units in Stock
--      Where Quantity In-Stock is Less Than the Quantity On-Order. 
-- ------------------------------------------------------------------
SELECT product_name as 'Name' ;

-- ------------------------------------------------------------------
-- EXTRA CREDIT -----------------------------------------------------
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- 11). Products with Supplier Company & Address Info
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- 12). Number of Products per Category With Less Than 5 Units
-- ------------------------------------------------------------------



-- ------------------------------------------------------------------
-- 13). Number of Products per Category Priced Less Than $20.00
-- ------------------------------------------------------------------