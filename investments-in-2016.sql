--585
-- Write your PostgreSQL query statement below
select round(sum(tiv_2016)::numeric, 2) as tiv_2016
from Insurance where pid in(
  select distinct i1.pid
  from Insurance i1
  inner join Insurance i2
  on i1.tiv_2015 = i2.tiv_2015 and i1.pid <> i2.pid 
  where (
    select count(*)
    from Insurance
    where lat = i1.lat and lon = i1.lon
    ) = 1
)  
