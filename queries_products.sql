-- Comments in SQL Start with dash-dash --

-- ADD A product to the table with name chair--
INSERT INTO products(name,price,can_be_returned) VALUES ('chair',44.00,'false')

-- ADD A product to the table with name stool--
INSERT INTO products(name,price,can_be_returned) VALUES ('stool',25.99,'true')

-- ADD A product to the table with name table--
INSERT INTO products(name,price,can_be_returned) VALUES ('table',124.00,'false')

--Display all row and column in the table--
SELECT * FROM product

--Display all the name of the products--
SELECT name FROM product

--Display all the names and price of the products--
SELECT name,price FROM products

-- ADD A product to the table with name table lamp--
INSERT INTO products(name,price,can_be_returned) VALUES ('table lamp',49.99,'true')

--Display only the product that can_be_returned--
SELECT name,can_be_returned FROM products WHERE can_be_returned='true'

--Display only the products that have a price less than 44.00--
SELECT name,price FROM products WHERE price <= 44.00

--Display only the products that have a price in between 22.50 and 99.99--
SELECT name,price FROM products WHERE price BETWEEN 22.50 AND 99.99

--There’s a sale going on: Everything is $20 off! Update the database accordingly.--
UPDATE products
SET price = price-20

--Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.--
DELETE FROM products WHERE price < 25

--And now the sale is over. For the remaining products, increase their price by $20.--
UPDATE products
SET price = price+20

--There is a new company policy: everything is returnable. Update the database accordingly.--
UPDATE products
SET can_be_returned = 'true'