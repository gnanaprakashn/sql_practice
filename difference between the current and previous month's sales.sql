
-- 5Compute the difference between the current and previous month's sales

CREATE TABLE monthly_sales (
    sales_id INT,
    employee_id INT,
    month_year VARCHAR(10),
    sales INT
);

INSERT INTO monthly_sales VALUES
(1, 1, '2025-01', 1000),
(2, 1, '2025-02', 1200),
(3, 2, '2025-01', 900),
(4, 2, '2025-02', 1000),
(5, 3, '2025-01', 1100),
(6, 3, '2025-02', 1150);
SELECT 
    employee_id,
    sales AS current_month_sales,
    LAG(sales) OVER (PARTITION BY employee_id ORDER BY month_year) AS previous_month_sales,
    sales - LAG(sales) OVER (PARTITION BY employee_id ORDER BY month_year) AS sales_difference
FROM monthly_sales;



