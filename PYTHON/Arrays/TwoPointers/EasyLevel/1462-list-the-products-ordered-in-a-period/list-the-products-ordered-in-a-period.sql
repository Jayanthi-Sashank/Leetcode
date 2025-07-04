/* Write your T-SQL query statement below */
with cte as(
select p.product_id,sum(unit) as unit,product_name
from orders o
left join products p
on o.product_id=p.product_id
where YEAR(order_date)=2020 and MONTH(order_date)=2
group by p.product_id,product_name
)
select product_name, unit 
from cte 
where unit>=100
order by product_name