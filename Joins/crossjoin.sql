USE sql_store;
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name

-- execrise
-- Implicit Syntax
USE sql_store;
SELECT 
    p.name AS product,
    s.name AS shipper
FROM products p , shippers s

-- Explicit Syntax
SELECT 
	p.name AS product,
    s.name AS shipper
FROM products p
CROSS JOIN shippers s
ORDER BY s.name
