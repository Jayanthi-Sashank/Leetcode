/* Write your T-SQL query statement below */

select contest_id,ROUND((COUNT(DISTINCT r.user_id)*100 / (SELECT COUNT(user_id)*1.0 FROM Users)), 2)as percentage
from Register R
join Users U
on U.user_id=R.user_id
group by contest_id
order by percentage desc, contest_id asc
