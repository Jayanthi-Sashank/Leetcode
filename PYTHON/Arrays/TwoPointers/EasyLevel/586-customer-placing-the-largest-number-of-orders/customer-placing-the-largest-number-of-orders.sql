/* Write your T-SQL query statement below */
with CTE as(
select customer_number,count(*)as max_count
from Orders
group BY Customer_number
) 
select customer_number
from CTE
where max_count in
    ( 
        select max(max_count)
        from CTE
    )