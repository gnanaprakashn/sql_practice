use practice;
CREATE TABLE employee_sales (
    employee_id INT,
    employee_name VARCHAR(50),
    department_id INT,
    sales INT
);

INSERT INTO employee_sales VALUES
(1, 'Alice', 101, 500),
(2, 'Bob', 101, 300),
(3, 'Charlie', 102, 400),
(4, 'Diana', 102, 600),
(5, 'Eve', 101, 200);

-- Find the cumulative sum of sales for each employee;

SELECT employee_id,
       employee_name,
       department_id,
       sales,
       SUM(sales) OVER (PARTITION BY employee_id ORDER BY sales) AS cumulative_sales
FROM employee_sales;









