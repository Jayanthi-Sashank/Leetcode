# Write your MySQL query statement below
select Emp.name as Employee
from Employee Emp
join Employee Mng
on Emp.managerId=Mng.Id and Emp.Salary>Mng.salary

