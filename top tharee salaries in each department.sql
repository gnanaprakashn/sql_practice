
-- 4. Identify the top tharee salaries in each department.
CREATE TABLE employee_salaries (
    employee_id INT,
    employee_name VARCHAR(50),
    department_id INT,
    salary INT
);

INSERT INTO employee_salaries VALUES
(1, 'Alice', 301, 70000),
(2, 'Bob', 301, 60000),
(3, 'Charlie', 302, 50000),
(4, 'Diana', 301, 80000),
(5, 'Eve', 302, 55000);

select rk,salary ,department_id from (
select dense_rank() over ( partition by department_id order by salary desc ) as rk,salary,department_id from employee_salaries )a
where rk <3;
