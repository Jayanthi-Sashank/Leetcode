/* Write your T-SQL query statement below */
select user_id,count(*) as followers_count
from Followers
group by user_id