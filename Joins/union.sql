SELECT 
	o.order_id,
    o.order_date,
    'Active' AS 'Status'
FROM orders o
WHERE o.order_date >= '2019-01-01'
UNION
SELECT 
	o.order_id,
    o.order_date,
    'Archived' AS 'Status'
FROM orders o
WHERE o.order_date < '2019-01-01'