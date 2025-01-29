--  Get a list of projects without assigned employees
select p.*  from 
    employees e
 left  join  projects p
    on e.employeeid = p.projectid
    where p.projectid is null ;