/* Write your T-SQL query statement below */
with cte as(
select product_id,year as first_year, dense_rank() over( partition by product_id order by year) as rank,quantity, price
from Sales
)
select product_id, first_year,quantity,price from cte 
where rank=1