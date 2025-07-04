/* Write your T-SQL query statement below */
with cte as(
select id ,num,
case when num=lead(num) over(order by id) and num=lead(num,2) over(order by id) then num else num+1 end as  ConsecutiveNum
from logs
)
select num as ConsecutiveNums from cte where num=ConsecutiveNum group by num having count(ConsecutiveNum)>=1
