
USE ecommerce;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM sellers;
SELECT * FROM order_items;
SELECT * FROM order_payments;
SELECT product_id , price FROM order_items
WHERE price > 500;
SELECT order_id, SUM(payment_value) AS Total_payment
FROM order_payments
GROUP BY order_id;
SELECT * FROM products
WHERE product_category_name = "bebes";
SELECT * FROM order_payments 
WHERE payment_type ="credit_card"
AND payment_value > 100;
SELECT
    o.customer_id,
    o.order_status,
    o_p.order_id,
    o_p.payment_type,
    o_p.payment_installments,
    o_p.payment_value
FROM
    orders o
        LEFT JOIN
    order_payments o_p ON o_p.order_id = o.order_id;
CREATE VIEW high_payment_value AS
SELECT order_id, payment_type, payment_value
FROM order_payments
WHERE payment_value > 200;
SELECT * FROM high_payment_value;    
