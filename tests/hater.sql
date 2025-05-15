select user_id, avg_rating
from(
select ra.user_id, avg(ra.rating) as avg_rating
from {{ref('stg_rating')}} ra
group by  ra.user_id ) as tb1
where avg_rating =0