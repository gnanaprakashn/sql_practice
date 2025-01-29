-- 1. Retrieve a list of customers who have placed orders 
select  c.customerName,c.customerid from orders o join  customers c on c.customerid= o.customerid;