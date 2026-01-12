# Write your MySQL query statement below
select name Customers
from Orders O
right join Customers C
on O.CustomerId=C.id
where customerId is null
