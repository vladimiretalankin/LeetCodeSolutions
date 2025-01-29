-- 196
-- Write your PostgreSQL query statement below
delete from Person
where id not in(
    select min(id)
    from Person
    group by email
    order by min(id)
)

-- A potentially safer approach (without 'NOT IN'):
delete from Person p
where exists (
    select id
    from Person
    where email = p.email
        and id < p.id
)
