/* Write your T-SQL query statement below */
/* Write your PL/SQL query statement below */


select e1.name as Employee
from Employee e1
join Employee m1
on e1.managerId=m1.id
where e1.salary>m1.salary

