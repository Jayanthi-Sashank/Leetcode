/* Write your T-SQL query statement below */
with cte as(
select product_id,year as first_year ,quantity,price,dense_rank()over( partition by product_id order by year)as rank
from sales
)
select product_id,first_year,quantity ,price from cte where rank=1
order by product_id,first_year