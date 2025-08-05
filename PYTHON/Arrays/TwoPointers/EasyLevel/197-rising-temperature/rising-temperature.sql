/* Write your T-SQL query statement below */
select W2.id
from Weather W1
join Weather W2
on W2.temperature>W1.temperature and datediff(DD,W1.recordDate,W2.recordDate)=1