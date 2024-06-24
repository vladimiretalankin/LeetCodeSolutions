--1045
-- Write your PostgreSQL query statement below

select c.customer_id
from Product p
inner join Customer c
on p.product_key = c.product_key
group by c.customer_id 
having COUNT(distinct p.product_key) = (select COUNT(*) from Product)
