
--  Rank employees based on their sales within their department.

CREATE TABLE employee_department_sales (
    employee_id INT,
    employee_name VARCHAR(50),
    department_id INT,
    sales INT
);

INSERT INTO employee_department_sales VALUES
(1, 'Alice', 201, 800),
(2, 'Bob', 201, 400),
(3, 'Charlie', 202, 600),
(4, 'Diana', 202, 700),
(5, 'Eve', 201, 500);


SELECT employee_id,
       employee_name,
       department_id,
       sales,
       RANK() OVER (PARTITION BY department_id ORDER BY sales DESC) AS sales_rank
FROM employee_department_sales;