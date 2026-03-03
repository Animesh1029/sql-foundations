-- =====================================
-- 1. Total number of customers
-- =====================================
SELECT COUNT(*) AS total_customers
FROM customers;


-- =====================================
-- 2. Customers from Germany
-- =====================================
SELECT customer_id, first_name, last_name
FROM customers
WHERE country = 'Germany';


-- =====================================
-- 3. Total revenue per product
-- =====================================
SELECT product_id, SUM(quantity * price) AS total_revenue
FROM order_items
GROUP BY product_id;
