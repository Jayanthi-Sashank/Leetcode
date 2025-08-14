/* Write your T-SQL query statement below */
with cte as (
select employee_id,primary_flag,department_id,count(employee_id) over(partition by employee_id order by employee_id)as counting
from employee 
),
cte1 as(
select employee_id,
case when primary_flag='Y' or counting=1 then department_id end as department_id
from cte)
select employee_id, department_id
from cte1
where department_id is not null



