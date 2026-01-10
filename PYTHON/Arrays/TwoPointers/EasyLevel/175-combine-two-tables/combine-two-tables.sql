
select firstName,lastName, city, state
from Person p
left join Address A
on P.personId= A.personId
