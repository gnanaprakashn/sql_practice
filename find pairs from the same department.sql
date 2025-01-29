--  Match employees to themselves to find pairs from the same department
select e.employeename as emp1, ee.employeename as emp2 from employees e
join employees ee on e.DepartmentID= ee.DepartmentID where e.employeeid <ee.employeeid;
