/* Write your T-SQL query statement below */
select Em.unique_id,name 
from EmployeeUNI Em
right join Employees e
on Em.id=e.id