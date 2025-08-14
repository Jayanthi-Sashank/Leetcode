/* Write your T-SQL query statement below */
with cte as(
select id, num, case when num=lead(num) over( order by id) and num=lead(num,2) over(order by id) then num end as number
from Logs
),
cte1 as (
select number as ConsecutiveNums
from cte
where number is not null
)
select ConsecutiveNums
from cte1
group by ConsecutiveNums
having count(*)>=1

