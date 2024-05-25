--626
-- Write your PostgreSQL query statement below
select id, 
case 
when id%2 > 0 and id = (select max(id) from Seat) then student
when id % 2 > 0 then lead(student, 1) over (order by id) 
else lag(student, 1) over (order by id)
end as student
from Seat
