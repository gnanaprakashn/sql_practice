-- 3. Calculate a running total of orders by order date.
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO orders VALUES
(101, '2025-01-01', 150),
(102, '2025-01-02', 200),
(103, '2025-01-03', 100),
(104, '2025-01-04', 250),
(105, '2025-01-05', 300);

SELECT order_id,
       order_date,
       amount,
       SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;