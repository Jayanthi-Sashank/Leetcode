/* Write your T-SQL query statement below */
with cte as(
select managerId,count(*) as reporting
from employee
where managerId is not null
group by managerId
having count(*)>=5)
select  name from employee where id in (select managerId from cte)

