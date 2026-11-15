# Write your MySQL query statement below
with cte as (
select num,count(*) as cnt
from MyNumbers
group by num
having count(*)=1
order by num desc)
select max(case when cnt=1 then num else null end) as num
from cte