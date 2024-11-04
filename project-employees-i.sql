--1075. Project Employees I
-- Write your PostgreSQL query statement below
select pr.project_id, ROUND(AVG(em.experience_years), 2) as average_years 
from 
  Project pr
  inner join Employee em
  on pr.employee_id = em.employee_id
group by pr.project_id
