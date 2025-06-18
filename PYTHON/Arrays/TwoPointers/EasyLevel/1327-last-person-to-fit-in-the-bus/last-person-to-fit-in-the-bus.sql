/* Write your T-SQL query statement below */
with cte as(
select person_name,weight,sum(weight) over( order by turn asc)as Cumulative_wieght
from Queue
)
select top 1 person_name from cte where Cumulative_wieght<=1000 
order by Cumulative_wieght desc
