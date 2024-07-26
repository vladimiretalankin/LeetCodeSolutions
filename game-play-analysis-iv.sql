--550
-- Write your PostgreSQL query statement below
--/*
select ROUND(COUNT(*)::decimal / (select COUNT(distinct player_id)::decimal from Activity), 2) as fraction
from Activity q
inner join
(select player_id, MIN(event_date)
 from Activity
 group by player_id) sq
 on q.player_id = sq.player_id
 and q.event_date = sq.min + 1
--*/
