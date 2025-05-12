{{config(materialized='table')}}

select c.FIRST_NAME as nome, 
c.LAST_NAME as apelido, 
min(o.ORDER_DATE) as primeira_encomenda
from dbt-tutorial.jaffle_shop.orders o
inner join dbt-tutorial.jaffle_shop.customers c on c.ID=o.user_id
group by c.FIRST_NAME, c.LAST_NAME 

