-- Outer join ( left and right)
USE sql_store;
SELECT
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id

-- Outer join between Multiple tables 

USE sql_store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id


--exericse
SELECT
	o.order_date,
    o.order_id,
    c.first_name,
    s.name AS 'Shipper',
    os.name AS 'Status'
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN shippers s ON o.shipper_id = s.shipper_id
LEFT JOIN order_statuses os ON o.status = os.order_status_id