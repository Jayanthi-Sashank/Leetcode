/* Write your T-SQL query statement below */
with cte as(
select d.name as Department,e.name as Employee,Salary,dense_rank() over(partition by d.name order by salary desc)as rank
from Employee e
join Department d
on e.departmentId=d.id)
select Department,Employee,Salary from cte where rank<=3
