/* Write your T-SQL query statement below */

select 'Low Salary' as category,
sum(case when income < 20000 then 1 else 0 end) as accounts_count
from Accounts
union all
select 'Average Salary',
sum(case when income between 20000 and 50000 then 1 else 0 end) 
from Accounts
union all
select 'High Salary',
sum(case when income > 50000 then 1 else 0 end) from Accounts





