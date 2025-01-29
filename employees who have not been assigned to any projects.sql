-- Find employees who have not been assigned to any projects 
select e.employeeid,e.employeename from 
 employees e
 left  join projects p 
    on e.employeeid = p.projectid
    where p.projectid is null ;