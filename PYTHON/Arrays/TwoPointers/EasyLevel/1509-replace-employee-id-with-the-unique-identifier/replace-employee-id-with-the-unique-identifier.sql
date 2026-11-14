# Write your MySQL query statement below
select unique_id ,name
from Employees emp
left join EmployeeUNI Euni
on Euni.id=emp.id