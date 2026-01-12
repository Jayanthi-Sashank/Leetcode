# Write your MySQL query statement below
select curr.id
from Weather curr
join Weather prev
on  datediff(curr.recordDate,prev.RecordDate)=1
and curr.temperature>prev.temperature