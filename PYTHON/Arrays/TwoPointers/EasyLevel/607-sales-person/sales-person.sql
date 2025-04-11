/* Write your T-SQL query statement below */
select name
from 
SalesPerson 
where name not in
(
select s.name
from SalesPerson s
join Company c
join Orders o
on o.com_id=c.com_id
on s.sales_id=o.sales_id
where c.name='RED'
)