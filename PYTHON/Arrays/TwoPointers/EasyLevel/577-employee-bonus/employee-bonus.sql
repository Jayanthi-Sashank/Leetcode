/* Write your T-SQL query statement below */
select e1.name,b1.bonus
from Employee e1
 left join Bonus b1
on b1.empId=e1.empID
where b1.bonus<1000 or b1.bonus is null


