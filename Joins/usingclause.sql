USE sql_store;
SELECT 
	o.order_id,
    c.first_name,
    sh.name AS 'Shipper'
FROM orders o
JOIN customers c USING(customer_id)
LEFT JOIN shippers sh USING(shipper_id)

-- exercise

USE sql_invoicing;
SELECT 
	p.date,
    c.name AS 'Client',
    p.amount,
    pm.name
FROM payments p
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
JOIn clients c ON p.client_id = c.client_id