--550
-- Write your PostgreSQL query statement below

with players_count as (
    select COUNT(distinct player_id)::decimal from Activity
)
select ROUND(COUNT(*)::decimal / (select * from players_count), 2) as fraction
from Activity q
inner join (
    select player_id, MIN(event_date)
    from Activity
    group by player_id
    ) sq
on q.player_id = sq.player_id
and q.event_date = sq.min + 1;


-- Another way:

with players_count as (
    select COUNT(distinct player_id)::decimal from Activity
),
players_and_events as (
    select 
        event_date, 
        rank () over w1 as event_order,
        lead (event_date) over w1 as next_event_date
    from Activity
    WINDOW w1 as (
            partition by player_id
            order by event_date
        )
)
select ROUND(COUNT(*)::decimal / (select * from players_count), 2) as fraction
from players_and_events
where 
        event_order = 1
        and next_event_date = event_date + 1
