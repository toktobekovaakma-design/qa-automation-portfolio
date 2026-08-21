-- ============================================================
-- SQL Query Examples — QA Engineer Portfolio
-- ============================================================
-- Fictional e-commerce schema used for these examples:
--
-- users        (id, name, email, status, created_at)
-- orders       (id, user_id, total_amount, status, created_at)
-- products     (id, name, price, stock)
-- order_items  (id, order_id, product_id, quantity)
--
-- These queries demonstrate SQL a QA Engineer might use to verify
-- application data directly in the database (data integrity checks,
-- validating business rules, cross-checking UI/API results, etc.).
--
-- NOTE: These queries have not been executed against a real/production
-- database. They are written as portfolio examples and are syntactically
-- correct for a standard SQL (MySQL/PostgreSQL-style) database.
-- ============================================================


-- 1. Verify that only users with an "active" status are returned
-- (SELECT, WHERE)
SELECT id, name, email, status
FROM users
WHERE status = 'active';


-- 2. Verify the 10 most recently registered users, newest first
-- (ORDER BY, LIMIT)
SELECT id, name, email, created_at
FROM users
ORDER BY created_at DESC
LIMIT 10;


-- 3. Verify high-value orders that are still pending or have failed
-- (WHERE, AND, OR)
SELECT id, user_id, total_amount, status
FROM orders
WHERE (status = 'pending' OR status = 'failed')
  AND total_amount > 100;


-- 4. Verify users registered with a Gmail email address
-- (LIKE)
SELECT id, name, email
FROM users
WHERE email LIKE '%@gmail.com';


-- 5. Verify only orders with an expected set of statuses are present
-- (IN)
SELECT id, user_id, status
FROM orders
WHERE status IN ('cancelled', 'failed', 'refunded');


-- 6. Verify products priced within a specific test range
-- (BETWEEN)
SELECT id, name, price
FROM products
WHERE price BETWEEN 10 AND 50;


-- 7. Verify there are no orphaned orders (orders missing a linked user)
-- (IS NULL)
SELECT id, user_id, total_amount
FROM orders
WHERE user_id IS NULL;


-- 8. Verify the total number of registered users in the system
-- (COUNT)
SELECT COUNT(*) AS total_users
FROM users;


-- 9. Verify total revenue generated from completed orders
-- (SUM, WHERE)
SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'completed';


-- 10. Verify the average order value across all orders
-- (AVG)
SELECT AVG(total_amount) AS average_order_value
FROM orders;


-- 11. Verify the number of orders per status, to cross-check dashboard counts
-- (GROUP BY, COUNT)
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;


-- 12. Verify which users have placed more than 3 orders (frequent buyers)
-- (GROUP BY, HAVING)
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 3;


-- 13. Verify order records display the correct associated user details
-- (INNER JOIN)
SELECT o.id AS order_id, o.total_amount, o.status, u.name AS user_name, u.email
FROM orders o
INNER JOIN users u ON o.user_id = u.id;


-- 14. Verify which registered users have never placed an order
-- (LEFT JOIN, IS NULL)
SELECT u.id, u.name, u.email
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;


-- 15. Verify each order item references a valid product with the correct price
-- (INNER JOIN across multiple tables)
SELECT oi.order_id, p.name AS product_name, p.price, oi.quantity
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.id;
