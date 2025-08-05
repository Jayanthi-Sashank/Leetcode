# Write your MySQL query statement below
select contest_id,ROUND((COUNT(DISTINCT r.user_id) / (SELECT COUNT(user_id) FROM Users)) * 100, 2)as percentage
from Register R
join Users U
on U.user_id=R.user_id
group by contest_id
order by percentage desc,contest_id asc