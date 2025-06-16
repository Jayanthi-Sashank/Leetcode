/* Write your T-SQL query statement below */
with cte as(
select teacher_id,count(*) as counting
from teacher
group by teacher_id,subject_id)

select teacher_id,count(counting)as cnt
from cte
group by teacher_id

