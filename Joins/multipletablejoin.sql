USE sql_store;
SELECT o.customer_id,
	o.order_date,
	c.first_name,
    c.last_name,
    os.name AS 'Status'
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_statuses os on o.status = os.order_status_id

-- exercise 
USE sql_invoicing;
SELECT
    p.invoice_id,
    c.name,
    p.date,
    p.amount,
    pm.name AS 'Payment Status'
FROM payments p
JOIN clients c on p.client_id = c.client_id
JOIN payment_methods pm on p.payment_method = pm.payment_method_id