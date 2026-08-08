-- Customers and Orders: List the customer_name and order_date for all customers who have placed orders.

-- All Customers and Their Orders: List all customer names and their corresponding product_name from orders, if they have any. Include customers even if they haven't placed any orders.

-- Find Products and Their Orders: Display Product Name and the order_date from all the products that are ordered.

SELECT customer_name, order_date
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT customer_name, product_name
FROM customers
LEFT OUTER JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT products.product_name, orders.order_date
FROM products
INNER JOIN orders
ON products.product_name=orders.product_name;