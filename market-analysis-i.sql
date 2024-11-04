-- 1158
-- Write your PostgreSQL query statement below

select user_id as buyer_id, join_date, count(o.order_id) as orders_in_2019
from Users u
left join (
    select * from Orders where extract(year from order_date) = 2019
    ) o
on o.buyer_id = u.user_id
group by user_id, join_date;

-- Alternatively (direct date comparison):
select user_id as buyer_id, join_date, count(o.order_id) as orders_in_2019
from users u
left join (
    select * from Orders where order_date >= '2019-01-01' and order_date <= '2019-12-31'
    ) o
on o.buyer_id = u.user_id
group by user_id, join_date;

