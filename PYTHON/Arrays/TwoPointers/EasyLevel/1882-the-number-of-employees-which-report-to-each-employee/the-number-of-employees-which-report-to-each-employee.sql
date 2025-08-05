/* Write your T-SQL query statement below */
select E.employee_id,E.name,count(M.reports_to)as reports_count,round(avg(M.age*1.0),0) as average_age
from employees E
join employees M
on E.employee_id=M.reports_to
group by E.name,E.employee_id
order by E.employee_id asc
