/* Write your T-SQL query statement below */
with cte as(
select distinct sell_date, product
from activities
)
select sell_date,count(*) as num_sold,string_agg(product,',')as products
from cte
group by sell_date
