select  ID as order_id, user_id as customer_id, ORDER_DATE, status
from dbt-tutorial.jaffle_shop.orders
--where 
--EXTRACT(YEAR FROM ORDER_DATE) = 2018