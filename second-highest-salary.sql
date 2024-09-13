--176
-- Write your PostgreSQL query statement below
select (
  select sq.salary 
  from(
    select ROW_NUMBER() over (
    order by salary desc
    ) rank, 
    salary
    from Employee
    group by salary
  ) sq
  where sq.rank = 2
) as "SecondHighestSalary"
