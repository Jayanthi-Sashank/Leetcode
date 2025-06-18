/* Write your T-SQL query statement below */
select x,y,z,case when sum(x+y)>sum(z) and sum(y+z)>sum(x) and sum(x+z)>sum(y) then 'Yes' else 'No' end  as triangle from triangle
group by x,y,z
