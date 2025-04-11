/* Write your T-SQL query statement below */
with CTE as(
select player_id, event_date as first_login,dense_rank() over(partition by player_id order by event_date)as Rank
from Activity
)
Select player_id,first_login from CTE
where Rank=1




